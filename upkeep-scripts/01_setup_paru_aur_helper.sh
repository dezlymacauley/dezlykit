#!/usr/bin/env bash

# Install build requirements
sudo pacman -S --needed base-devel
sudo pacman -S --needed git

# Create the source-built packages directory if it doesn't exist
mkdir -p "$HOME/.src-built-pkgs"

# Clone paru only if it doesn't already exist
if [[ ! -d "$HOME/.src-built-pkgs/paru" ]]; then
    echo "Cloning paru..."
    git clone https://aur.archlinux.org/paru.git "$HOME/.src-built-pkgs/paru"
else
    echo "Paru already installed. Rebuild manually to upgrade."
fi

if command -v paru >/dev/null 2>&1; then

    echo "Updating AUR helper Paru"
    echo

    paru -S --needed paru
    echo
fi
