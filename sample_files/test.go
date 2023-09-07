// sample go file to test the parser

package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("Hello World")
	os.Exit(0)
}

// classes, functions, enums, interfaces, methods, structs

// class

type Person struct {
	name string
	age  int
}

// function

func add(a int, b int) int {
	return a + b
}

// enum

type Color int

const (
	RED Color = iota
	GREEN
	BLUE
)

// interface

type Shape interface {
	area() float64
}

// method

func (p Person) sayHello() {
	fmt.Println("Hello")
}

// struct

type Rectangle struct {
	width  float64
	height float64
}
