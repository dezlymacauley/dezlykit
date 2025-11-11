#!/usr/bin/env bash

#______________________________________________________________________________

# Installs uv, an extremely fast Python package installer and resolver written in Rust
# It's part of the astral ecosystem
echo

if ! command -v uv >/dev/null 2>&1; then

    echo "uv is not installed"
    echo

    echo "Installing uv..."
    echo

    sudo pacman -S --needed uv
    echo
fi

#______________________________________________________________________________

# An extremely fast Python linter and code formatter, written in Rust.
# It's part of the astral ecosystem
if ! command -v ruff >/dev/null 2>&1; then

    echo "ruff is not installed"
    echo

    echo "Installing ruff..."
    echo

    uv tool install ruff
    echo
else

    echo "Updating ruff..."
    echo

    uv tool update ruff
    echo
fi
#______________________________________________________________________________

# Language support for Python
uv tool install basedpyright

# A CLI tool for testing APIs
uv tool install httpie

# Instead of running your Python code with `python name_of_file.py`,
# use `mypy name_of_file.py` to actually check for type errors.
uv tool install mypy

uv tool install csvkit 

#______________________________________________________________________________
# SECTION: Mojo (Python programming language)

# A package management and workflow tool. 
# This is the recommended way to setup Mojo for now 
# because the uv setup does not come with Mojo as a standalone package.
# https://docs.modular.com/pixi/#create-a-project-and-virtual-environment

sudo pacman -S --needed pixi

# https://docs.modular.com/mojo/manual/get-started#1-create-a-mojo-project
# TODO: Read this first before running this command.

#______________________________________________________________________________
