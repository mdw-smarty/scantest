#!/usr/bin/make -f

# This Makefile is an example of what you could feed to scantest's -command flag.

test:
	go build ./...
	go test -race -cover -short -timeout=1s ./...

fmt:
	go mod tidy && go fmt ./...

install:
	go install github.com/mdwhatcott/scantest