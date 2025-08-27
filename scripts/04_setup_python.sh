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

# An extremely fast Python linter and code formatter, written in Rust.
# It's part of the astral ecosystem
uv tool install ruff

# A CLI for SQLite Databases with auto-completion and syntax highlighting
uv tool install litecli

# CLI for Postgres Database. With auto-completion and syntax highlighting
uv tool install pgcli


#______________________________________________________________________________
