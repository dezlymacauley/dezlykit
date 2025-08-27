#!/usr/bin/env bash

#______________________________________________________________________________

# Install the Rust toolchain manager
sudo pacman -S --needed rustup
echo

# Install the latest stable version of Rust.
# This includes cargo, clippy, rust-docs, rust-std, rustc, and rustfmt
rustup default stable
echo

# Installs the official Rust Language Server
sudo pacman -S --needed rust-analyzer

#______________________________________________________________________________

