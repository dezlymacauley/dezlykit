#!/usr/bin/env bash

#______________________________________________________________________________
# Clipboard Manager

sudo pacman -S --needed wl-clipboard
sudo pacman -S --needed wl-clip-persist

#______________________________________________________________________________

sudo pacman -S --needed nwg-look # Allows you to set themes for GUI apps
sudo pacman -S --needed materia-gtk-theme # A theme for GUI applications

sudo pacman -S --neeed qt5-wayland # Wayland support for qt5-applications
sudo pacman -S --needed qt6-wayland # Wayland support for qt6-applications

#______________________________________________________________________________
# Notification Manager

sudo pacman -S --needed swaync

#______________________________________________________________________________
# Fonts

sudo pacman -S --needed noto-fonts
sudo pacman -S --needed noto-fonts-emoji
sudo pacman -S --needed noto-fonts-cjk
sudo pacman -S --needed noto-fonts-extra 

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
# Lock Screen

sudo pacman -S --needed hyprlock

#______________________________________________________________________________

# sudo pacman -S --needed viewnoir
# sudo pacman -S --needed mpv
# sudo pacman -S --needed xdg-desktop-portal-gtk
# sudo pacman -S --needed xdg-desktop-portal-hyrpland
# sudo pacman -S --needed hyprpaper
# sudo pacman -S --needed hyprpolkitagent
# sudo pacman -S --needed obs-studio
# sudo pacman -S --needed kdenlive
# sudo pacman -S --needed libreoffice-fresh

desktop_environment_packages=(

	# Media Players
	viewnior		# Image Viewer 
	mpv 			# Video player

	# Desktop Portals
   
    # Used by GTK apps to show file pickers and dialogs via portal
	xdg-desktop-portal-gtk

    # Lets apps access Wayland features like screensharing in Hyprland
	xdg-desktop-portal-hyprland

	# Hyprland Tiling Window Manager Ecosystem
	hyprland
	hyprpaper
	hyprpolkitagent

	# Hyprland Tiling Window Manager Ecosystem

	# Content Creation Tools
	gimp			# Image editing
	kdenlive         	# Video editing
	libreoffice-fresh 	# Document viewing and creation
	obs-studio       	# Video recording
)

sudo pacman -S --noconfirm --needed "${desktop_environment_packages[@]}"

#______________________________________________________________________________
