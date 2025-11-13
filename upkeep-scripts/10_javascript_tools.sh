#!/usr/bin/env bash

#______________________________________________________________________________
# Step 1: Install Node.js

# Install the version fox plugin for Node.js
# This allows version fox to manage multiple versions of Node.js
# vfox add nodejs
# echo

# Update the Node.js plugin
# vfox update nodejs
# echo

# Install the latest version of Node.js
# vfox install nodejs@latest
# echo

# This will get the number of the LIVN (Latest Installed Version Number) 
# of Node.js
# LIVN_OF_NODEJS=$(vfox list nodejs | grep -oP 'v\K[0-9]+\.[0-9]+\.[0-9]+' | sort -V | tail -n1)

# This will set that version as the global version of nodejs to use on your
# system.
# vfox use --global "nodejs@$LIVN_OF_NODEJS"

#______________________________________________________________________________
# Step 2: Install Bun

# WARNING: Don't use bun from vfox as your global version 
# because `bunx` does not work.

npm install --global bun@1.3.1

# if command -v npm >/dev/null 2>&1; then
#     echo
#     echo "npm is active on your Path."
#     echo "Bun will be installed / updated."
#     echo
#     npm install --global bun
# else
#     echo
#     echo "npm is not active on your Path."
#     echo "Bun will not be installed / updated."
#     echo
# fi

#______________________________________________________________________________
# Step 3: Install global npm packages using Bun

# To view packages installed by Bun
#     bun pm ls -g
#
# if command -v bun >/dev/null 2>&1; then
#     echo
#     echo "Bun is active on your Path."
#     echo "Global npm packages will be installed / updated."
#     echo
#
#     # TypeScript is a superset of JavaScript with type checking. 
#     # This is a dependency of both the typescript-language-server,
#     # and the svelte-language-server
#
#     # This will install the folowing packages:
#     # 1. tsc = The TypeScript Compiler
#     # 2. tsserver = TypeScript's Analysis Engine
#
#     # These packages are required by:
#     # typescript-language-server (aka ts_ls) = Uses tsserver the create 
#     # a complete lsp that your code editor can use.
#
#     # svelte-language-server = uses tsc, tsserver, and ts_ls 
#     # to provide a good developer experience for TypeScript in Svlete files 
#     bun install --global --trust typescript
#     echo
#
#     # Provides Language support for JavaScript (.js), TypeScript (.ts),
#     # JavaScript React (.jsx), and TypeScript React (.tsx) files
#     bun install --global --trust typescript-language-server
#     echo
#
#     # Language support for Svelte files
#     # The binary `svelteserver` will be installed.
#     bun install --global --trust svelte-language-server
#     echo
#
#     # Language support for files containing Tailwind CSS classes.
#     # This will install: 
#     # tailwindcss-language-server
#     # css-language-server = This allows the tailwindcss-language-server to
#     # understand regular CSS in `.html` files. 
#     # It it is more of an internal helper tool for Tailwind CSS. 
#     # It is not for regular CSS files.
#     bun install --global --trust @tailwindcss/language-server 
#     echo
#
#     # This is a collection of 5 language servers that have been extracted
#     # from the code editor Visual Studio Code. 
#     # It includes the following:
#
#     #  - vscode-css-language-server = CSS support for regular .css files
#     #  - vscode-eslint-language-server
#     #  - vscode-html-language-server
#     #  - vscode-json-language-server
#     #  - vscode-markdown-language-server
#     bun install --global --trust vscode-langservers-extracted
#
# else
#     echo
#     echo "Bun is not active on your Path."
#     echo "Global npm packages will not be installed / updated."
#     echo
# fi
#
#______________________________________________________________________________
# Step 1: Install Deno

# Install the version fox plugin for Deno
# This allows version fox to manage multiple versions of Deno
# vfox add deno
# echo
#
# # Update the Deno plugin
# vfox update deno
# echo
#
# # Install the latest version of Deno
# vfox install deno@latest
# echo
#
# # This will get the number of the LIVN (Latest Installed Version Number) 
# # of Deno
# LIVN_OF_DENO=$(vfox list deno | grep -oP 'v\K[0-9]+\.[0-9]+\.[0-9]+' | sort -V | tail -n1)
#
# # This will set that version as the global version of Deno to use on your
# # system.
# vfox use --global "deno@$LIVN_OF_DENO"

#______________________________________________________________________________

# Testing Web Browser

paru -S --needed google-chrome

#______________________________________________________________________________
