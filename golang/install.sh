#!/bin/sh
if [ "$(which go)" ] && [ -n "$GOPATH" ]; then
	mkdir -p "$GOPATH/bin" "$GOPATH/src/github.com/"

	packages="
golang.org/x/tools/cmd/cover
golang.org/x/tools/cmd/godoc
github.com/nsf/gocode
golang.org/x/tools/cmd/guru
golang.org/x/tools/cmd/goimports
golang.org/x/tools/cmd/gorename
github.com/golang/lint/golint
github.com/golangci/golangci-lint/cmd/golangci-lint@v1.15.0
github.com/saibing/bingo
  "

	for pkg in $packages; do
		go get -u "$pkg"
	done
fi
