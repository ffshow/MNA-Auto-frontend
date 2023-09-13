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
	Type string `json:"type"`
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

func main() {
	var swaggerFilePath string
	flag.StringVar(&swaggerFilePath, "path", "gen/swagger/swagger.json", "Swagger json file path")
	flag.Parse()

	log.Printf("swaggerFilePath: %v\n", swaggerFilePath)
	log.Println("geneate Dart api client from swagger.json")

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
	exportModels := []string{}
	for k, _ := range apiDocs.Definitions {
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
		if err := t.ExecuteTemplate(buffer, "model", &DartModel{
			Name: namePascalCase,
			Part: nameSnakeCase,
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
	// generate dart code
	build := exec.Command("dart", "run", "build_runner", "build", "--delete-conflicting-outputs")
	if err := build.Run(); err != nil {
		panic(err)
	}
}

type DartModel struct {
	Name string `json:"name"`
	Part string `json:"part"`
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
