#!/usr/bin/env bash

#______________________________________________________________________________

printf "\n%s\n" "Bluetooth Tools"
printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

# A daemon that handles Bluetooth communication between Linux OS and 
# bluetoot devices
sudo pacman -S --needed --noconfirm bluez

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________

# The command-line tools for controlling the Bluetooth stack
sudo pacman -S --needed --noconfirm bluez-utils

printf "%s\n\n" '___________________________________________________________'
#______________________________________________________________________________
