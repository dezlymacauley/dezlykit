#!/usr/bin/env bash

#______________________________________________________________________________

# The Docker Engine
sudo pacman -S --needed docker

# A simple terminal UI for docker and docker-compose,
# written in Go with the gocui library.
sudo pacman -S --needed lazydocker

# Buildx is a Docker CLI plugin for extended build capabilities with BuildKit.
# This is the new way to build Docker images
sudo pacman -S --needed docker-buildx 

#______________________________________________________________________________
