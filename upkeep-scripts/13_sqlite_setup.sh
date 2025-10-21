#!/usr/bin/env bash

#______________________________________________________________________________

# SQLite 
sudo pacman -S --needed sqlite
echo

# NOTE: This requires uv

# A CLI for SQLite Databases with auto-completion and syntax highlighting
uv tool install litecli

#______________________________________________________________________________
