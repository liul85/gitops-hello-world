package main

import (
	"io"
	"net/http"
)

func main() {
	http.HandleFunc("/", home)
	http.ListenAndServe(":8081", nil)
}

func home(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "Hello, GitOps!")
}
