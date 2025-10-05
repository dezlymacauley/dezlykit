#!/usr/bin/env bash

#______________________________________________________________________________
# SECTION: Docker

# The Docker Engine
sudo pacman -S --needed docker

# A command that makes it easy to start multiple docker containers
# using a `docker-compose.yml` file
sudo pacman -S --needed docker-compose

# A simple terminal UI for docker and docker-compose,
# written in Go with the gocui library.
sudo pacman -S --needed lazydocker

# Buildx is a Docker CLI plugin for extended build capabilities with BuildKit.
# This is the new way to build Docker images
sudo pacman -S --needed docker-buildx 

#______________________________________________________________________________
# SECTION: Kubernetes

# Kubernetes CLI
sudo pacman -S --needed kubectl

# A tool that makes it easy to run Kubernetes locally
sudo pacman -S --needed minikube

#______________________________________________________________________________
