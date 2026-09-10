#!/usr/bin/env bash

sudo pacman -S --needed --noconfirm uv

# Language support for Python projects
sudo pacman -S --needed --noconfirm ty

# A formatter for Python files
sudo pacman -S --needed --noconfirm ruff

# Language support for CMake files in C++ projects
uv tool install cmake-language-server@latest
