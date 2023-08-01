#!/usr/bin/make -f

test: fmt
	go test -race -cover -timeout=1s -count=1 ./...

fmt:
	@go version && go mod tidy && go fmt ./...
