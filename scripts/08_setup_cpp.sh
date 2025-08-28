#!/usr/bin/env bash

# Install the version fox plugin for clang
# This allows version fox to manage multiple versions of clang
vfox add clang
echo

# Update the clang plugin
vfox update clang
echo

# Install the latest version of Clang
vfox install clang@latest
echo

# This will get the number of the LIVN (Latest Installed Version Number) 
# of clang. 
LIVN_OF_CLANG=$(vfox list clang | head -n1 | sed 's/.*v//')
vfox use --global "clang@$LIVN_OF_CLANG"

# This is the clang package.
# It includes C++ tools like:
# `clangd` for language support in Neovim
# `clang-format` for formatting your code.
sudo pacman -S --needed clang

#______________________________________________________________________________
