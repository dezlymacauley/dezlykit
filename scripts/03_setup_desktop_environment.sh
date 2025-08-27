#!/usr/bin/env bash

#______________________________________________________________________________
# Clipboard Manager

sudo pacman -S --needed wl-clipboard
sudo pacman -S --needed wl-clip-persist

#______________________________________________________________________________
# Notification Manager

sudo pacman -S --needed swaync

#______________________________________________________________________________
# Fonts

sudo pacman -S --needed noto-fonts
sudo pacman -S --needed noto-fonts-emoji
sudo pacman -S --needed noto-fonts-cjk

#______________________________________________________________________________
# Web browser
sudo pacman -S --needed firefox

#______________________________________________________________________________
# Volume control

sudo pacman -S --needed pavucontrol

#______________________________________________________________________________
# Application Launcher

sudo pacman -S --needed rofi

#______________________________________________________________________________
# Image Viewer

sudo pacman -S --needed viewnior

#______________________________________________________________________________
# Video Player

sudo pacman -S --needed mpv

#______________________________________________________________________________
# Desktop Portals

# sudo pacman -S --noconfirm --needed \
# xdg-desktop-portal-gtk \
# xdg-desktop-portal-hyprland

#______________________________________________________________________________
# Hyprland Tiling Window Manager Ecosystem

# sudo pacman -S --noconfirm --needed \
# hyprland \
# hyprpaper \
# hyprpolkitagent

packages=(
  obs-studio       	# Video recording
  kdenlive         	# Video editing
  libreoffice-fresh 	# Document viewing and creation
)

sudo pacman -S --noconfirm --needed "${packages[@]}"


#______________________________________________________________________________
# Content Creation Tools

# sudo pacman -S --noconfirm --needed \
# obs-studio \ 		# Video recording
# kdenlive \		# Video Editing
# libreoffice-fresh 	# Document viewing and creation

#______________________________________________________________________________
