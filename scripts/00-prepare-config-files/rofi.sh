#!/usr/bin/env bash

has_rofi_config=""

if [[ ! -d "$HOME/.config/rofi/" ]]; then
	has_rofi_config="false"
	echo

	echo "You do not have a Rofi configuration"
	echo

	echo "Loading the default DezlyKit Rofi config."
	cp -r "$HOME/.config/dezlykit/saved-configs/default/rofi/" "$HOME/.config/"
else
	has_rofi_config="true"
	echo

	echo "An existing Rofi configuration was found"
	echo

	perform_backup_of_rofi_config=""

	# Prompt the user until they enter `y` or `n`
	while [[ "$perform_backup_of_rofi_config" != "y" && "$perform_backup_of_rofi_config" != "n" ]]; do
	read -p "Would you like to backup your Rofi config? (y / n) " perform_backup_of_rofi_config

         if [[ "$perform_backup_of_rofi_config" != "y" && "$perform_backup_of_rofi_config" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
         fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.
	
	if [[ "$perform_backup_of_neovim_config" == "y" ]]; then
	    # Remove the old default rofi config
	    rm -rf "$HOME/.config/dezlykit/saved-configs/default/rofi"

	    # Copy the user's current rofi config as the new default
	    cp -r "$HOME/.config/rofi" "$HOME/.config/dezlykit/saved-configs/default/"

	    echo
	    echo "Your current Rofi configuration has replaced the default."
	fi
fi
