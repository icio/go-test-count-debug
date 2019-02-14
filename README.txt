$ cat count_test.go
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

$ go test -count 2 -v .
init
MainTest in
=== RUN   TestExample
TestExample run
--- PASS: TestExample (0.00s)
=== RUN   TestExample
TestExample run
--- PASS: TestExample (0.00s)
PASS
MainTest out
ok  	github.com/icio/go-test-count-debug	0.001s
