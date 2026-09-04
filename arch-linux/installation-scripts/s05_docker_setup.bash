#!/usr/bin/env bash

#______________________________________________________________________________

# SECTION: Helper Functions

pacman_install() {
    sudo pacman -S --needed --noconfirm "$@"
}

#______________________________________________________________________________

pacman_install docker
pacman_install docker-buildx
pacman_install docker-compose

#______________________________________________________________________________
