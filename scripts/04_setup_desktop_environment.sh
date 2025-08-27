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

desktop_environment_packages=(
	
	# Media Players
	viewnior		# Image Viewer 
	mpv 			# Video player

	# Desktop Portals
	xdg-desktop-portal-gtk
	xdg-desktop-portal-hyprland

	# Hyprland Tiling Window Manager Ecosystem
	hyprland
	hyprpaper
	hyprpolkitagent

	# Hyprland Tiling Window Manager Ecosystem
	
	# Content Creation Tools
	obs-studio       	# Video recording
	kdenlive         	# Video editing
	libreoffice-fresh 	# Document viewing and creation
)

sudo pacman -S --noconfirm --needed "${desktop_environment_packages[@]}"

#______________________________________________________________________________
