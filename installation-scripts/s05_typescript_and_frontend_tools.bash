#!/usr/bin/env bash

#______________________________________________________________________________

printf "\n%s\n" "TypeScript and frontend tools"
printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

# The default runtime for JavaScript
sudo pacman -S --needed --noconfirm nodejs

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

# The default package manager for JavaScript
sudo pacman -S --needed --noconfirm npm

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

# A Rust-powered JavaScript runtime that can run HTML files directly
sudo pacman -S --needed --noconfirm bun

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

# Language support for the following file types:
# .html .css .json
bun install --global --trust vscode-langservers-extracted

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

# Language support for the following file types:
# .ts .js
bun install --global --trust @vtsls/language-server

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

# Language support for the following file types:
# .astro
bun install --global --trust @astrojs/language-server

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

# Language support for the following file types:
# .svelte
bun install --global --trust @astrojs/language-server

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

# Language support for the following file types:
# .svelte
bun install --global --trust svelte-language-server

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________
