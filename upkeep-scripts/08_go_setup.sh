#!/usr/bin/env bash

# Install the version fox plugin for golang
# This allows version fox to manage multiple versions of golang
vfox add golang
echo

# Update the golang plugin
vfox update golang
echo

# Install the latest version of golang
vfox install golang@latest
echo

# This will get the number of the LIVN (Latest Installed Version Number) 
# of golang
LIVN_OF_GOLANG=$(vfox list golang | grep -oP 'v\K[0-9]+\.[0-9]+\.[0-9]+' | sort -V | tail -n1)

# This will set the latest installed version of Golang as the version 
# to use globally
vfox use --global "golang@$LIVN_OF_GOLANG"

# Install the language server for Go
go install golang.org/x/tools/gopls@latest

# Language support for SQL files
go install github.com/sqls-server/sqls@latest
echo

#______________________________________________________________________________
# SECTION: gRPC setup for Go

# https://grpc.io/docs/languages/go/quickstart/

# Protocol Buffers - Google's data interchange format
# This includes the compiler, protoc
sudo pacman -S --needed protobuf 

# Go plugins for the protocol compiler:
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

#______________________________________________________________________________
