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
