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

# This is for global Rust package installations
# By default Rust's built-in command 
# `cargo install name-of-package` will build from source.
#
# The command ` cargo-binstall name-of-package` will look for a pre-compiled
# binary of the package that you are trying to install and use that.
# If it fails to find one, then it will fall back to using `cargo install`

sudo pacman -S --needed cargo-binstall

#______________________________________________________________________________
# SECTION: Install global Rust packages with `cargo-binstall`

# cargo-binstall protols

# To uninstall just use the regular cargo
# cargo uninstall protols

#______________________________________________________________________________
