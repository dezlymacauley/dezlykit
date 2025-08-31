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

# Language support for TypeScript and `.tsx` files (TypeScript React).
# Since TypeScript is a superset of JavaScript, 
# it also supports JavaScript, and `.jsx` files (JavaScript React).
# This langauage server is also required by the Svelte language server,
# as Svelte files support TypeScript.
#  Note: this language-server requires node.js to work
bun install --global typescript-language-server

# Language support for Svelte files
bun install --global svelte-language-server
echo

# This is a collection of language servers that have been extracted
# from the code editor Visual Studio Code. 
# It includes the following:
#
#  - vscode-css-language-server
#  - vscode-eslint-language-server
#  - vscode-html-language-server
#  - vscode-json-language-server
#  - vscode-markdown-language-server
#  Note: this language-server requires node.js to work
bun install -g vscode-langservers-extracted
bun pm trust
echo

# Language support for files containing Tailwind CSS classes.
bun install --global @tailwindcss/language-server 
echo

#______________________________________________________________________________
