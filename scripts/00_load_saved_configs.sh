#!/usr/bin/env bash

#______________________________________________________________________________
# Neovim

has_neovim_config=""

if [[ ! -d "$HOME/.config/nvim/" ]]; then
	has_neovim_config="false"
	echo

	echo "You do not have a Neovim configuration"
	echo

	echo "Loading the default DezlyKit Neovim config."
	cp -r "$HOME/.config/dezlykit/saved-configs/default/nvim/" "$HOME/.config/"
else
	has_neovim_config="true"
	echo

	echo "An existing Neovim configuration was found"
	echo

	perform_backup_of_neovim_config=""

	# Prompt the user until they enter `y` or `n`
	while [[ "$perform_backup_of_neovim_config" != "y" && "$perform_backup_of_neovim_config" != "n" ]]; do
	read -p "Would you like to backup your Neovim config? (y / n) " perform_backup_of_neovim_config

         if [[ "$perform_backup_of_neovim_config" != "y" && "$perform_backup_of_neovim_config" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
         fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.
	
	if [[ "$perform_backup_of_neovim_config" == "y" ]]; then
	    # Remove the old default nvim config
	    rm -rf "$HOME/.config/dezlykit/saved-configs/default/nvim"

	    # Copy the user's current nvim config as the new default
	    cp -r "$HOME/.config/nvim" "$HOME/.config/dezlykit/saved-configs/default/"

	    echo
	    echo "Your current Neovim configuration has replaced the default."
	fi
fi

#______________________________________________________________________________
