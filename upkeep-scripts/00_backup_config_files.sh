#!/usr/bin/env bash
#______________________________________________________________________________

# This is where DezlyKit loads default configurations when it doesn't find
# a configuration file for a program.
#
# If you have an existing configuration on your system, 
# DezlyKit will ask if you want to make a backup. 
# That backup will then replace the configuration for that specific program
# in the directory below.
DEFAULT_SAVED_CONFIGS="$HOME/.config/dezlykit/saved-configs/default"

#______________________________________________________________________________
# SECTION: Ghostty

if [[ ! -d "$HOME/.config/ghostty/" ]]; then
    echo
	echo "No custom ghostty configuration was found"
	echo

	echo "A default configuration will be loaded from DezlyKit/saved-configs"
    cp -r "$DEFAULT_SAVED_CONFIGS/ghostty/" "$HOME/.config/"
    echo
else
    echo
	echo "👻 DezlyKit has detected your existing ghostty configuration."
	echo

	backup_ghostty=""
	
        while [[ "$backup_ghostty" != "y" && "$backup_ghostty" != "n" ]]; do
	    read -p "Backup ghostty config? (y / n) " backup_ghostty

         if [[ "$backup_ghostty" != "y" && "$backup_ghostty" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
         fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.

	if [[ "$backup_ghostty" == "y" ]]; then
        # Delete the default config saved in DezlyKit
	    rm -rf "$DEFAULT_SAVED_CONFIGS/ghostty/"

        # Replace the default DezlyKit config with the user's current 
        # configuration.
	    cp -r "$HOME/.config/ghostty/" "$DEFAULT_SAVED_CONFIGS"

	    echo
	    echo "Your current ghostty configuration has been saved to DezlyKit"
        echo
	fi

fi

#______________________________________________________________________________
# SECTION: Hyprland

if [[ ! -d "$HOME/.config/ghostty/" ]]; then
    echo
	echo "No custom Hyprland configuration was found"
	echo

	echo "A default configuration will be loaded from DezlyKit/saved-configs"
    cp -r "$DEFAULT_SAVED_CONFIGS/hypr/" "$HOME/.config/"
    echo
else
    echo
	echo "💧 DezlyKit has detected your existing Hyprland configuration."
	echo

	backup_hyprland=""
	
        while [[ "$backup_hyprland" != "y" && "$backup_hyprland" != "n" ]]; do
	    read -p "Backup Hyprland config? (y / n) " backup_hyprland

         if [[ "$backup_hyprland" != "y" && "$backup_hyprland" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
         fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.

	if [[ "$backup_hyprland" == "y" ]]; then
        # Delete the default config saved in DezlyKit
	    rm -rf "$DEFAULT_SAVED_CONFIGS/hypr/"

        # Replace the default DezlyKit config with the user's current 
        # configuration.
	    cp -r "$HOME/.config/hypr/" "$DEFAULT_SAVED_CONFIGS"

	    echo
	    echo "Your current Hyprland configuration has been saved to DezlyKit"
        echo
	fi

fi

#______________________________________________________________________________
# SECTION: mpv

if [[ ! -d "$HOME/.config/mpv/" ]]; then
    echo
	echo "No custom mpv configuration was found"
	echo

	echo "A default configuration will be loaded from DezlyKit/saved-configs"
    cp -r "$DEFAULT_SAVED_CONFIGS/mpv/" "$HOME/.config/"
    echo
else
    echo
	echo "▶️ DezlyKit has detected your existing mpv configuration."
	echo

	backup_mpv=""
	
        while [[ "$backup_mpv" != "y" && "$backup_mpv" != "n" ]]; do
	    read -p "Backup mpv config? (y / n) " backup_mpv

         if [[ "$backup_mpv" != "y" && "$backup_mpv" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
         fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.

	if [[ "$backup_mpv" == "y" ]]; then
        # Delete the default config saved in DezlyKit
	    rm -rf "$DEFAULT_SAVED_CONFIGS/mpv/"

        # Replace the default DezlyKit config with the user's current 
        # configuration.
	    cp -r "$HOME/.config/mpv/" "$DEFAULT_SAVED_CONFIGS"

	    echo
	    echo "Your current mpv configuration has been saved to DezlyKit"
        echo
	fi

fi

#______________________________________________________________________________
