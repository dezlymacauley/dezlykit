#!/usr/bin/env bash

#______________________________________________________________________________

# SECTION: Helper Functions

pacman_install() {
    sudo pacman -S --needed --noconfirm "$@"
}

#______________________________________________________________________________

pacman_install base-devel

pacman_install clang

pacman_install cmake

#______________________________________________________________________________

# Download the vcpkg repo, and run the bootstrap script,
# or update the repo if it exists
if [ -d "$HOME/vcpkg" ]; then
    git -C "$HOME/vcpkg" pull
else
    git clone --depth=1 https://github.com/microsoft/vcpkg.git "$HOME/vcpkg"
    "$HOME/vcpkg/bootstrap-vcpkg.sh"
fi

#______________________________________________________________________________

# TODO: Consider using conan as a package manager

if command -v uv &>/dev/null; then
    uv tool install conan
fi

#______________________________________________________________________________
