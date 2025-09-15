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
# Step 2: Install Bun

# NOTE: Don't install bun using vfox because `bunx` does not work.


if command -v npm >/dev/null 2>&1; then
    echo
    echo "npm is active on your Path."
    echo "Bun will be installed / updated."
    echo
    npm install --global bun
else
    echo
    echo "npm is not active on your Path."
    echo "Bun will not be installed / updated."
    echo
fi

#______________________________________________________________________________
# Step 3: Install global npm packages using Bun

if command -v bun >/dev/null 2>&1; then
    echo
    echo "Bun is active on your Path."
    echo "Global npm packages will be installed / updated."
    echo

    # This is a collection of 5 language servers that have been extracted
    # from the code editor Visual Studio Code. 
    # It includes the following:
    #
    #  - vscode-css-language-server
    #  - vscode-eslint-language-server
    #  - vscode-html-language-server
    #  - vscode-json-language-server
    #  - vscode-markdown-language-server
    bun install --global --trust vscode-langservers-extracted

    # Language support for files containing Tailwind CSS classes.
    bun install --global --trust @tailwindcss/language-server 
    echo

    # A superset of JavaScript with type checking. 
    # This is a dependency of both the typescript-language-server,
    # and the svelte-language-server
    bun install --global --trust typescript
    echo

    # Language support for JavaScript, TypeScript,
    # JavaScript React (jsx), and TypeScript React (tsx) files
    bun install --global --trust typescript-language-server
    echo

    # Language support for Svelte files
    bun install --global --trust svelte-language-server
    echo
else
    echo
    echo "Bun is not active on your Path."
    echo "Global npm packages will not be installed / updated."
    echo
fi

#______________________________________________________________________________

# Testing Web Browser

paru -S --needed google-chrome

#______________________________________________________________________________

# Mobile Development Tools

# sudo pacman -S --needed jdk-openjdk

#______________________________________________________________________________
