package test

import (
	"fmt"
	"os"
	"testing"
)

func init() {
	fmt.Println("init")
}

func TestExample(t *testing.T) {
	fmt.Println("TestExample run")
}

func TestMain(m *testing.M) {
	fmt.Println("MainTest in")
	exit := m.Run()
	fmt.Println("MainTest out")
	os.Exit(exit)
}
