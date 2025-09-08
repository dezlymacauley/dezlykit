#!/usr/bin/env bash

#______________________________________________________________________________
# Step 1: Install Node.js

# Install the version fox plugin for Node.js
# This allows version fox to manage multiple versions of Node.js
vfox add nodejs
echo

# Update the Node.js plugin
vfox update nodejs
echo

# Install the latest version of Node.js
vfox install nodejs@latest
echo

# This will get the number of the LIVN (Latest Installed Version Number) 
# of Node.js
LIVN_OF_NODEJS=$(vfox list nodejs | grep -oP 'v\K[0-9]+\.[0-9]+\.[0-9]+' | sort -V | tail -n1)
vfox use --global "nodejs@$LIVN_OF_NODEJS"

#______________________________________________________________________________
# Step 2: Install global JavaScript packages with Node.js

# This is a collection of 5 language servers that have been extracted
# from the code editor Visual Studio Code. 
# It includes the following:
#
#  - vscode-css-language-server
#  - vscode-eslint-language-server
#  - vscode-html-language-server
#  - vscode-json-language-server
#  - vscode-markdown-language-server
#  Note: this language-server requires node.js to work
npm install -g vscode-langservers-extracted
echo

# Language support for files containing Tailwind CSS classes.
npm install -g @tailwindcss/language-server 
echo

# A superset of JavaScript with type checking
npm install --g typescript
echo

# Language support for JavaScript, TypeScript files
npm install -g typescript-language-server
echo

# Language support for Svelte files
npm install -g svelte-language-server
echo

#______________________________________________________________________________

# Testing Web Browser

paru -S --needed google-chrome

#______________________________________________________________________________
