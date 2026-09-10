#!/usr/bin/env bash

#______________________________________________________________________________

printf  "\n%s\n" "🦀 Rust Global Setup"
printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

# Installs the Rust toolchain manager
sudo pacman -S --needed --noconfirm rustup

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

if command -v rustup &>/dev/null; then

    # Installs the toolchain called `stable`
    rustup update stable
    
    rustup default stable

    rustup component add --toolchain stable rust-analyzer
fi

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________
