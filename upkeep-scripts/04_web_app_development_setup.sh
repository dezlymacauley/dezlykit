#!/usr/bin/env bash

#______________________________________________________________________________
# SECTION: Web Browser

# The most used web browser in the world
paru -S --needed google-chrome

#______________________________________________________________________________
# SECTION: Language Runtimes For Global Use

# A high-performance Google-backed language with a focus 
# on simplicity when implementing concurrency.
sudo pacman -S --needed go

# A Rust-powered JavaScript runtime, with a focus on security.
# TypeScript is a first class language in Deno.
sudo pacman -S --needed deno 

# The most used JavaScript runtime
sudo pacman -S --needed nodejs 

# The most used sever side language on the web
# PHP powers over 70% of the web
sudo pacman -S --needed php

#______________________________________________________________________________
# SECTION: Package Managers

# The most used package manager for JavaScript 
sudo pacman -S --needed npm

# The package manager for PHP
sudo pacman -S --needed composer 

#______________________________________________________________________________
# SECTION: Language Tools

# Language support for Go
sudo pacman -S --needed gopls

#______________________________________________________________________________

# Create a custom directory for npm packages that will be installed globally 
# with the command: `npm install -g name-of-package`
mkdir -p $HOME/.npm-global-packages/

# Set npm to use this global directory
npm config set prefix "$HOME/.npm-global-packages"

# NOTE: Remember to add the line below to your .zshrc file

# export PATH="$HOME/.npm-global-packages/bin:$PATH"

#______________________________________________________________________________

if command -v npm >/dev/null 2>&1; then
    echo
    echo "✅ npm is installed and available on your PATH"
    echo "Global npm packages will be installed / updated."

    # Provides language support for Svelte files
    npm install -g svelte-language-server
    echo

    # Provides language support for Tailwind CSS files
    npm install -g @tailwindcss/language-server
    echo

    # Provides language support for PHP files
    npm install -g intelephense
    echo

else
    echo
    echo "❌ Error: npm is not active on your PATH."
    echo "Global npm packages will not be installed / updated."
    echo
fi

#______________________________________________________________________________
# SECTION: Version Manager

# A Go-powered version manager that allows you to install specific versions
# of go, deno, nodejs, and php.
# This way you know the exact version of the runtime 
# that your project is using.
paru -S --needed vfox-bin
echo

# This will install the Version Fox plugin for managing deno runtimes
vfox add deno 

# This will update the Version Fox plugin for managing deno runtimes
vfox update deno

#______________________________________________________________________________
