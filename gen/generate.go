package main

import (
	"bytes"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"log"
	"os"
	"os/exec"
	"strings"
	"text/template"
	"unicode"
)

type Definitions map[string]Model

type Model struct {
	Type       string           `json:"type"`
	Properties map[string]Field `json:"properties"`
}

type Field struct {
	Type     string `json:"type"`
	Nullable bool   `json:"x-nullable"`
	IsDate   bool   `json:"x-date"`
}

type ApiDocs struct {
	Schemes     []string                      `json:"schemes"`
	Swagger     string                        `json:"swagger"`
	Info        Info                          `json:"info"`
	Host        string                        `json:"host"`
	BasePath    string                        `json:"basePath"`
	Paths       map[string]map[string]Handler `json:"paths"`
	Definitions Definitions                   `json:"definitions"`
}

type Info struct {
	Description    string
	Title          string
	TermsOfService string
	Version        string
}

type Handler struct {
	Description string           `json:"description"`
	Consumes    []string         `json:"consumes"`
	Produces    []string         `json:"produces"`
	Tags        []string         `json:"tags"`
	Summary     string           `json:"summary"`
	Parameters  []Param          `json:"parameters"`
	Responses   map[int]Response `json:"responses"`
}

type Param struct {
	Type        string `json:"type"`
	Description string `json:"description"`
	Name        string `json:"name"`
	In          string `json:"in"`
	Required    bool   `json:"required"`
	Schema      Schema `json:"schema"`
}

type Response struct {
	Description string `json:"description"`
	Schema      Schema `json:"schema"`
}

func (r Response) Return() string {
	if r.Schema.Type == "array" {
		sp := strings.Split(r.Schema.Items.Ref, ".")
		p := sp[len(sp)-1]
		return p
	}
	if r.Schema.Ref != "" {
		sp := strings.Split(r.Schema.Ref, ".")
		p := sp[len(sp)-1]
		return p
	}
	log.Printf("Warning: %s does not have a return type", r.Description)
	return ""
}

type Schema struct {
	Type                 string `json:"type"`
	AdditionalProperties bool   `json:"additionalProperties"`
	Ref                  string `json:"$ref"`
	Items                struct {
		Ref string `json:"$ref"`
	} `json:"items"`
}

type Service struct {
	Path  string     `json:"path"`
	Name  string     `json:"name"`
	Model string     `json:"model"`
	Funcs []DartFunc `json:"funcs"`
}

func (s Service) HasFuncs() bool {
	return false
}

type DartModel struct {
	Name   string      `json:"name"`
	Part   string      `json:"part"`
	Fields []DartField `json:"fields"`
}

type DartField struct {
	Definition string
}

type DartFunc struct {
	Name        string
	Path        string
	Method      string
	PathParams  []Param
	QueryParams []Param
	BodyParams  []Param
	Responses   map[int]Response
	Return      string
	Summary     string `json:"summary"`
	Description string `json:"description"`
}

func (d DartFunc) SanitizePath() string {
	p := strings.ReplaceAll(d.Path, "{", "$")
	p = strings.ReplaceAll(p, "}", "")
	return p
}

func (d DartFunc) StrParams() string {
	required := ""
	optional := ""
	sep := ", "
	for _, p := range d.BodyParams {
		if p.Required {
			required += p.Name + " data" + sep
		} else {
			optional += p.Name + "? data" + sep
		}
	}
	for _, p := range d.PathParams {
		t := MapToDartType(p.Type)
		if p.Required {
			required += t + " " + p.Name + sep
		} else {
			optional += t + "? " + p.Name + sep
		}
	}
	for _, p := range d.QueryParams {
		t := MapToDartType(p.Type)
		if p.Required {
			required += t + " " + p.Name + sep
		} else {
			optional += t + "? " + p.Name + sep
		}
	}
	if optional != "" {
		required += required + "{ " + optional + "}"
	}
	return required
}

func FuncName(funcPath string, funcMethod string) string {
	p := strings.Split(funcPath, "/")
	m := ""
	for _, v := range p {
		if strings.Contains(v, "{") {
			continue
		}
		m += "_" + v
	}

	return toLowerCamelCase(funcMethod + "_" + m)
}

func (d DartModel) NameSnakeCase() string {
	return toSnakeCase(d.Name)
}

func (d DartModel) NamePascalCase() string {
	return toPascalCase(d.Name)
}

func toLowerCamelCase(input string) string {
	words := strings.FieldsFunc(input, func(r rune) bool {
		return !unicode.IsLetter(r) && !unicode.IsNumber(r)
	})
	var result string
	for i, word := range words {
		if i > 0 {
			word = strings.Title(strings.ToLower(word))
		}
		result += word
	}
	return result
}

var (
	swaggerFilePath string
	build           bool
	format          bool
)

func main() {
	flag.StringVar(&swaggerFilePath, "path", "gen/swagger/swagger.json", "Swagger json file path")
	flag.BoolVar(&build, "build", true, "Run dart build runner to generate the code")
	flag.BoolVar(&format, "format", true, "Format code")
	flag.Parse()

	_, err := os.Lstat(swaggerFilePath)
	if err != nil {
		panic(err)
	}
	log.Println("Geneate Dart api client from swagger.json")

	b, err := os.ReadFile(swaggerFilePath)
	if err != nil {
		panic(err)
	}
	var apiDocs ApiDocs
	if err := json.Unmarshal(b, &apiDocs); err != nil {
		panic(err)
	}

	_ = os.RemoveAll("lib/models")
	if err := os.Mkdir("lib/models", os.ModePerm); err != nil {
		if !errors.Is(err, os.ErrExist) {
			panic(err)
		}
	}
	t := template.Must(template.New("").ParseGlob("gen/templates/*"))
	// generate dart code
	generateModels(apiDocs, t)
	generateServices(apiDocs)
	if build {
		buildCmd := exec.Command("dart", "run", "build_runner", "build", "--delete-conflicting-outputs")
		if err := buildCmd.Run(); err != nil {
			panic(err)
		}
	}
	if format {
		formatCmd := exec.Command("dart", "format", ".")
		if err := formatCmd.Run(); err != nil {
			panic(err)
		}
	}
}

func generateServices(apiDocs ApiDocs) {
	services := []Service{}
	tags := map[string][]DartFunc{}
	for funcPath, v := range apiDocs.Paths {
		for funcMethod, h := range v {
			returnFunc := "void"
			for k, r := range h.Responses {
				if k == 200 {
					if len(r.Schema.Ref) != 0 {
						sp := strings.Split(r.Schema.Ref, ".")
						m := sp[len(sp)-1]
						returnFunc = "Future<" + m + ">"
					}
					if r.Schema.Type == "array" {
						sp := strings.Split(r.Schema.Items.Ref, ".")
						m := sp[len(sp)-1]
						returnFunc = "Future<List<" + m + ">>"
					}
				}
			}
			if len(h.Tags) != 1 {
				continue
			}
			// fmt.Printf("h.Parameters: %v\n", h.Parameters)

			pathParams := []Param{}
			queryParams := []Param{}
			bodyParams := []Param{}
			for _, p := range h.Parameters {
				switch p.In {
				case "path":
					pathParams = append(pathParams, p)
				case "query":
					queryParams = append(queryParams, p)
				case "body":
					if p.Schema.Ref != "" {
						sp := strings.Split(p.Schema.Ref, ".")
						m := sp[len(sp)-1]
						p.Name = m
						bodyParams = append(bodyParams, p)
					} else {
						p.Name = toPascalCase(p.Name + "_" + "model")
						bodyParams = append(bodyParams, p)
					}
				default:

				}
			}
			v2 := h.Tags[0]
			tags[v2] = append(tags[v2], DartFunc{
				Return:      returnFunc,
				Name:        FuncName(funcPath, funcMethod),
				Path:        funcPath,
				Method:      funcMethod,
				PathParams:  pathParams,
				QueryParams: queryParams,
				BodyParams:  bodyParams,
				Responses:   h.Responses,
				Summary:     h.Summary,
				Description: h.Description,
			})
		}
	}
	exportService := ""
	for k, v := range tags {
		//FIXME: root service doesn't have a model 😢
		if k == "root" {
			continue
		}
		exportService += fmt.Sprintf("export '%s_service.dart';\n", k)
		services = append(services, Service{
			Path:  fmt.Sprintf("lib/services/%s_service.dart", k),
			Name:  toPascalCase(k) + "Service",
			Model: toPascalCase(k) + "Model",
			Funcs: v,
		})
	}
	s := template.Must(template.New("").ParseGlob("gen/templates/*"))
	for _, v := range services {
		sf, err := os.Create(v.Path)
		if err != nil {
			panic(err)
		}
		defer sf.Close()
		s.ExecuteTemplate(sf, "service", v)
	}
	f, err := os.Create("lib/services/services.dart")
	if err != nil {
		panic(err)
	}
	defer f.Close()
	if err := s.ExecuteTemplate(f, "services", exportService); err != nil {
		panic(err)
	}
	providers := []string{}
	for _, s2 := range services {
		providers = append(providers, s2.Name)
	}
	providersFile, err := os.Create("lib/services/providers.dart")
	if err != nil {
		panic(err)
	}
	defer f.Close()
	if err := s.ExecuteTemplate(providersFile, "providers", providers); err != nil {
		panic(err)
	}
}

func generateModels(apiDocs ApiDocs, t *template.Template) {
	exportModels := []string{}
	for k, m := range apiDocs.Definitions {
		name := name(k)
		nameSnakeCase := toSnakeCase(name)
		namePascalCase := toPascalCase(nameSnakeCase)
		if err := os.Mkdir(fmt.Sprintf("lib/models/%s", nameSnakeCase), os.ModePerm); err != nil {
			panic(err)
		}
		modelPath := fmt.Sprintf("lib/models/%s/%s.dart", nameSnakeCase, nameSnakeCase)
		_ = os.Remove(modelPath)
		file, err := os.Create(modelPath)
		if err != nil {
			panic(err)
		}
		buffer := bytes.NewBuffer([]byte{})
		dartFields := []DartField{}
		for k, f := range m.Properties {
			t := f.Type
			var def strings.Builder
			if f.IsDate {
				t = "DateTime"
			}
			dt := MapToDartType(t)
			def.WriteString("@Default(null) " + dt + "? ")
			//FIXME: all fields are nullable now
			// if !f.Nullable {
			// 	if dt == "bool" {
			// 		def.WriteString("@Default(false)" + " " + dt + " ")
			// 	} else {
			// 		def.WriteString("required" + " " + dt + " ")
			// 	}
			// } else {
			// 	if dt == "bool" {
			// 		def.WriteString("@Default(false) " + dt + "? ")
			// 	} else {
			// 		def.WriteString("@Default(null) " + dt + "? ")
			// 	}
			// }
			def.WriteString(k + ",")
			dartFields = append(dartFields, DartField{
				Definition: def.String(),
			})
		}
		if err := t.ExecuteTemplate(buffer, "model", &DartModel{
			Name:   namePascalCase,
			Part:   nameSnakeCase,
			Fields: dartFields,
		}); err != nil {
			panic(err)
		}
		defer file.Close()
		_, err = file.Write(buffer.Bytes())
		if err != nil {
			panic(err)
		}

		exportModels = append(exportModels, fmt.Sprintf("export '%s/%s.dart';", nameSnakeCase, nameSnakeCase))
	}
	exportModelsFile, err := os.Create("lib/models/models.dart")
	if err != nil {
		panic(err)
	}
	defer exportModelsFile.Close()
	if err := t.ExecuteTemplate(exportModelsFile, "models", exportModels); err != nil {
		panic(err)
	}

}

func MapToDartType(t string) string {
	//FIXME: if type is another model
	switch t {
	case "string":
		return "String"
	case "integer":
		return "int"
	case "boolean":
		return "bool"
	case "DateTime":
		return "DateTime"
	default:
		return "dynamic"
	}
}

func name(input string) string {
	n := strings.Split(input, ".")
	name := n[len(n)-1]
	return name
}

func toSnakeCase(input string) string {
	var result strings.Builder
	result.Grow(len(input) + 5)
	for i, char := range input {
		lower := strings.ToLower(string(char))
		if i > 0 && string(char) != lower {
			result.WriteString("_")
		}
		result.WriteString(lower)
	}
	return result.String()
}

func toPascalCase(input string) string {
	words := strings.FieldsFunc(input, func(r rune) bool {
		return !unicode.IsLetter(r) && !unicode.IsNumber(r)
	})
	var result strings.Builder
	result.Grow(len(input))
	for _, word := range words {
		capitalized := strings.Title(strings.ToLower(word))
		result.WriteString(capitalized)
	}
	return result.String()
}
