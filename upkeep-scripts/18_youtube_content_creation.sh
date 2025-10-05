#!/usr/bin/env bash

# Video recording Software
sudo pacman -S --needed obs-studio       	

# Thumbnail creation / Image editing software
sudo pacman -S --needed gimp

# allows OBS to use your Intel UHD 620 (my GPU) through VAAPI/QuickSync.
sudo pacman -S --needed intel-media-driver 

# This lets you use the `libva-utils` command:
# vainfo
# sudo pacman -S --needed libva-utils
