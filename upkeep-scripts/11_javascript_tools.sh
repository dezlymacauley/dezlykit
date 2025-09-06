#!/usr/bin/env bash

#______________________________________________________________________________
# Step 2: Install Node.js

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
LIVN_OF_NODEJS=$(vfox list nodejs | head -n1 | sed 's/.*v//')
vfox use --global "nodejs@$LIVN_OF_NODEJS"

#______________________________________________________________________________
# Step 2: Install Deno

# Install the version fox plugin for Deno
# This allows version fox to manage multiple versions of Deno
vfox add deno
echo

# Update the Deno plugin
vfox update deno
echo

# Install the latest version of Bun
vfox install deno@latest
echo

# This will get the number of the LIVN (Latest Installed Version Number) 
# of bun
LIVN_OF_DENO=$(vfox list deno | head -n1 | sed 's/.*v//')
vfox use --global "deno@$LIVN_OF_DENO"

#______________________________________________________________________________
# Step 2: Install Bun

# Install the version fox plugin for Bun
# This allows version fox to manage multiple versions of Bun
vfox add bun
echo

# Update the Bun plugin
vfox update bun
echo

# Install the latest version of Bun
vfox install bun@latest
echo

# This will get the number of the LIVN (Latest Installed Version Number) 
# of bun
LIVN_OF_BUN=$(vfox list bun | head -n1 | sed 's/.*v//')
vfox use --global "bun@$LIVN_OF_BUN"

#______________________________________________________________________________
# Step 3: Install global JavaScript packages with Bun

# Always stick to `npm` for global installs because other package managers 
# often have minor issues.

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
# npm install --g vscode-langservers-extracted
bun install --global --trust vscode-langservers-extracted
echo

# Language support for files containing Tailwind CSS classes.
bun install --global --trust @tailwindcss/language-server 
echo

# A superset of JavaScript with type checking
bun install --global --trust typescript

# Language support for TypeScript files
bun install --global --trust typescript-language-server

# Language support for Svelte files
bun install --global --trust svelte-language-server
echo

# TypeScript support in Vue files
# npm install -g @vtsls/language-server

# Language support for Vue
# It will automatically install this @emmetio/css-parser@
# npm install --global @vue/language-server
echo

# List all of the globally installed Bun packages
bun pm -g ls

#______________________________________________________________________________
