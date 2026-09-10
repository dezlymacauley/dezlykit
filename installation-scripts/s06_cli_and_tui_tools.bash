#!/usr/bin/env bash

#______________________________________________________________________________

printf "\n%s\n" "💻 Terminal Global Setup"
printf "%s\n\n" '___________________________________________________________'

#______________________________________________________________________________

# Installs mise. A development environment manager 
sudo pacman -S --needed --noconfirm mise

printf "%s\n\n" '___________________________________________________________'

#______________________________________________________________________________

if command -v mise &>/dev/null; then

    # A cli tool used by `mise` to provide completion
    mise use -g usage
fi

printf "%s\n\n" '___________________________________________________________'

#______________________________________________________________________________

# Installs Neovim. A terminal-centric text editor and code editor.
sudo pacman -S --needed --noconfirm neovim

printf "%s\n\n" '___________________________________________________________'

#______________________________________________________________________________

# A Rust-powered terminal multiplexer
sudo pacman -S --needed --noconfirm zellij

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

# A Rust-powered terminal file manager
sudo pacman -S --needed --noconfirm yazi

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________
