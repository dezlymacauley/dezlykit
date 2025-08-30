#!/usr/bin/env bash

has_ghostty_config=""

if [[ ! -d "$HOME/.config/ghostty/" ]]; then
	has_ghostty_config="false"
	echo

	echo "You do not have a Ghostty configuration"
	echo

	echo "Loading the default DezlyKit Ghostty config."
	cp -r "$HOME/.config/dezlykit/saved-configs/default/ghostty/" "$HOME/.config/"
else
	has_ghostty_config="true"
	echo

	echo "An existing Ghostty configuration was found"
	echo

	perform_backup_of_ghostty_config=""

	# Prompt the user until they enter `y` or `n`
	while [[ "$perform_backup_of_ghostty_config" != "y" && "$perform_backup_of_ghostty_config" != "n" ]]; do
	read -p "Would you like to backup your Ghostty config? (y / n) " perform_backup_of_ghostty_config

         if [[ "$perform_backup_of_ghostty_config" != "y" && "$perform_backup_of_ghostty_config" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
         fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.
	
	if [[ "$perform_backup_of_neovim_config" == "y" ]]; then
	    # Remove the old default ghostty config
	    rm -rf "$HOME/.config/dezlykit/saved-configs/default/ghostty"

	    # Copy the user's current ghostty config as the new default
	    cp -r "$HOME/.config/ghostty" "$HOME/.config/dezlykit/saved-configs/default/"

	    echo
	    echo "Your current Ghostty configuration has replaced the default."
	fi
fi
