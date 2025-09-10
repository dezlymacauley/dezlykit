#!/usr/bin/env bash

# This includes:
# This is specifically for compiling C code
sudo pacman -S --needed gcc

# This is the clang package.
# It includes C++ tools like:
# `clang++` for compiling C++ code
# `clangd` for language support in Neovim for C and C++
# `clang-format` for formatting your code.
sudo pacman -S --needed clang

# This allows you to create Makefiles in your C++ project,
# that can be used to make compiling and running your program 
# a simpler process.
sudo pacman -S --needed make

#______________________________________________________________________________
