#!/usr/bin/env bash

#______________________________________________________________________________
# Install terminal tools

sudo pacman -S --needed acpi
echo

sudo pacman -S --needed zsh-syntax-highlighting
echo

sudo pacman -S --needed zsh-autosuggestions 
echo

sudo pacman -S --needed bat
echo

sudo pacman -S --needed brightnessctl
echo

sudo pacman -S --needed direnv
echo

sudo pacman -S --needed ghostty
echo

sudo pacman -S --needed ttf-meslo-nerd

sudo pacman -S --needed git
echo

# Required by git for certain commands
sudo pacman -S --needed less
echo

sudo pacman -S --needed lsd
echo

sudo pacman -S --needed starship
echo

sudo pacman -S --needed trash-cli
echo

sudo pacman -S --needed tree
echo

sudo pacman -S --needed udiskie
echo

sudo pacman -S --needed yazi
echo

# Extract .rar files
sudo pacman -S --needed unrar
echo

# Extract .7z files
sudo pacman -S --needed 7zip
echo

#______________________________________________________________________________
# Install Neovim 
# I have chosen to build from source so that I am always using the latest
# version of Neovim.

# Step 1: First install the build prerequisites for Arch Linux
sudo pacman -S --needed base-devel cmake ninja curl git

# Step 2: Create a directory for source built packages
mkdir -p "$HOME/.src-built-pkgs"

# I am creating a sub shell so that I can safely 
# enter `$HOME/.src-built-pkgs" without changing the directory that this main
# script is runing from.

(
	# Enter the directory for source built packages
	cd $HOME/.src-built-pkgs
	
	# Clone the Neovim directory from GitHub.
	# `--depth 1` is used to speed things up, 
	# because I am cloning the latest commit 
	# instead of the entire project history.

	if [[ ! -d "$HOME/.src-built-pkgs/neovim" ]]; then
	    git clone --depth 1 https://github.com/neovim/neovim.git "$HOME/.src-built-pkgs/neovim"
	fi

	# Enter the Neovim directory
	cd neovim

	# Build from source
	make CMAKE_BUILD_TYPE=RelWithDebInfo

	# Install the binaries system-wide so that the `nvim` command
	# can be used from any directory without having to use sudo
	# to run it.
	sudo make install

)

#______________________________________________________________________________

# This is for the plugin telescope nvim
# BurntSushi/ripgrep is required for 
# live_grep and grep_string 
# and is the first priority for find_files.

sudo pacman -S --needed ripgrep

#______________________________________________________________________________
