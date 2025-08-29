#!/usr/bin/env bash

has_hyprland_config=""

if [[ ! -d "$HOME/.config/hypr/" ]]; then
	has_hyprland_config="false"
	echo

	echo "You do not have a Hyprland configuration"
	echo

	echo "Loading the default DezlyKit Hyprland config."
	mkdir -p $HOME/.config/
	cp -r "$HOME/.config/dezlykit/saved-configs/default/hypr/" "$HOME/.config/"
else
	has_hyprland_config="true"
	echo

	echo "An existing Hyprland configuration was found"
	echo

	perform_backup_of_hyprland_config=""

	# Prompt the user until they enter `y` or `n`
	while [[ "$perform_backup_of_hyprland_config" != "y" && "$perform_backup_of_hyprland_config" != "n" ]]; do
	read -p "Would you like to backup your Hyprland config? (y / n) " perform_backup_of_hyprland_config

         if [[ "$perform_backup_of_hyprland_config" != "y" && "$perform_backup_of_hyprland_config" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
         fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.
	
	if [[ "$perform_backup_of_hyprland_config" == "y" ]]; then
	    # Remove the old default hypr config
	    rm -rf "$HOME/.config/dezlykit/saved-configs/default/hypr"

	    # Copy the user's current hypr config as the new default
	    cp -r "$HOME/.config/hypr" "$HOME/.config/dezlykit/saved-configs/default/"

	    echo
	    echo "Your current Hyprland configuration has replaced the default."
	fi
fi
