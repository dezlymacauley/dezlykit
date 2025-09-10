#!/usr/bin/env bash

# Install the version fox plugin for zig
# This allows version fox to manage multiple versions of zig
vfox add zig
echo

# Update the zig plugin
vfox update zig
echo

# Install the latest version of zig
vfox install zig@latest
echo

# This will get the number of the LIVN (Latest Installed Version Number) 
# of zig

LIVN_OF_ZIG=$(vfox list zig | grep -oP 'v\K[0-9]+\.[0-9]+\.[0-9]+' | sort -V | tail -n1)
vfox use --global "zig@$LIVN_OF_ZIG"

# Language support for zig in Neovim
sudo pacman -S --needed zls

#______________________________________________________________________________
