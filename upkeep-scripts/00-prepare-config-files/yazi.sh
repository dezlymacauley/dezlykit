#!/usr/bin/env bash

has_yazi_config=""

if [[ ! -d "$HOME/.config/yazi/" ]]; then
	has_yazi_config="false"
	echo

	echo "You do not have a Yazi configuration"
	echo

	echo "Loading the default DezlyKit Yazi config."
	cp -r "$HOME/.config/dezlykit/saved-configs/default/yazi/" "$HOME/.config/"
else
	has_yazi_config="true"
	echo

	echo "An existing Yazi configuration was found"
	echo

	perform_backup_of_yazi_config=""

	# Prompt the user until they enter `y` or `n`
	while [[ "$perform_backup_of_yazi_config" != "y" && "$perform_backup_of_yazi_config" != "n" ]]; do
	read -p "Would you like to backup your Yazi config? (y / n) " perform_backup_of_yazi_config

         if [[ "$perform_backup_of_yazi_config" != "y" && "$perform_backup_of_yazi_config" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
         fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.
	
	if [[ "$perform_backup_of_neovim_config" == "y" ]]; then
	    # Remove the old default yazi config
	    rm -rf "$HOME/.config/dezlykit/saved-configs/default/yazi"

	    # Copy the user's current yazi config as the new default
	    cp -r "$HOME/.config/yazi" "$HOME/.config/dezlykit/saved-configs/default/"

	    echo
	    echo "Your current Yazi configuration has replaced the default."
	fi
fi
