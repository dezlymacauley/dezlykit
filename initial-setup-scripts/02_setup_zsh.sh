#!/usr/bin/env bash

# Install Z shell
sudo pacman -S --needed zsh
echo

#______________________________________________________________________________

# Check battery status from the terminal
sudo pacman -S --needed acpi
echo

# Control screen brightness
sudo pacman -S --needed brightnessctl
echo

# Loads commands from a `.envrc` file
sudo pacman -S --needed direnv
echo

# Improves the appearance of the ls command
sudo pacman -S --needed lsd
echo

# Makes it easier to see what directory you are inside of
sudo pacman -S --needed starship 
echo

# Safely delete files from the terminal
sudo pacman -S --needed trash-cli
echo

# Displays a tree structure of the contents of a directory
sudo pacman -S --needed tree
echo

sudo pacman -S --needed udiskie
echo

# Shows suggestions based on ZSH history
sudo pacman -S --needed zsh-autosuggestions 
echo

# Highlights valid commands green, and invalide commands in red
sudo pacman -S --needed zsh-syntax-highlighting 
echo

#______________________________________________________________________________
