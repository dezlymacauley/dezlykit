#!/usr/bin/env bash
#______________________________________________________________________________
# SECTION: Install Paru AUR Helper

# Install build requirements
sudo pacman -S --needed base-devel git

# Only install paru if it isn't already available
if ! command -v paru &>/dev/null; then

    # Create a temporary directory for paru
    rm -rf "$HOME/paru/"
    mkdir -p "$HOME/paru/"

    # Clone the paru repo
    git clone --depth 1 https://aur.archlinux.org/paru.git "$HOME/paru/"

    # I'm creating a sub shell to build paru without changing the directory
    # that this script is being run from.
    (
        cd "$HOME/paru/"
        makepkg -si
    )

    # Remove the build directory.
    # This is no longer needed because Paru has been integrated 
    # into the system.
    rm -rf "$HOME/paru/"
else
    echo "Paru is already installed."
fi

#______________________________________________________________________________
