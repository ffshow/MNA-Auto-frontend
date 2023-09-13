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
	description    string
	title          string
	termsOfService string
	version        string
}

type Handler struct {
	description string
	consumes    []string
	produces    []string
	tags        []string
	summary     string
	responses   map[string]Response
}

type Response struct {
	description string
	schema      Schema
}

type Schema struct {
	Ref string `json:"$ref"`
}

var (
	swaggerFilePath string
	build           bool
)

func main() {
	flag.StringVar(&swaggerFilePath, "path", "gen/swagger/swagger.json", "Swagger json file path")
	flag.BoolVar(&build, "build", true, "Run dart build runner to generate the code")
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

	for path, _ := range apiDocs.Paths {
		fmt.Printf("path: %v\n", path)
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
			fmt.Printf("dt: %v\n", dt)
			if !f.Nullable {
				if dt == "bool" {
					def.WriteString("@Default(false)" + " " + dt + " ")
				} else {
					def.WriteString("required" + " " + dt + " ")
				}
			} else {
				if dt == "bool" {
					def.WriteString("@Default(false) " + dt + "? ")
				} else {
					def.WriteString("@Default(null) " + dt + "? ")
				}
			}
			def.WriteString(k + ",")
			fmt.Printf("def.String(): %v\n", def.String())
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
	if build {

		buildCmd := exec.Command("dart", "run", "build_runner", "build", "--delete-conflicting-outputs")
		if err := buildCmd.Run(); err != nil {
			panic(err)
		}
	}
}

type DartModel struct {
	Name   string      `json:"name"`
	Part   string      `json:"part"`
	Fields []DartField `json:"fields"`
}

type DartField struct {
	Definition string
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

func (d DartModel) NameSnakeCase() string {
	return toSnakeCase(d.Name)
}

func (d DartModel) NamePascalCase() string {
	return toPascalCase(d.Name)
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
