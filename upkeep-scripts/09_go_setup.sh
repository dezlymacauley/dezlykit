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
LIVN_OF_GOLANG=$(vfox list golang | head -n1 | sed 's/.*v//')
vfox use --global "golang@$LIVN_OF_GOLANG"

# Install the language server for Go
go install golang.org/x/tools/gopls@latest

#______________________________________________________________________________
