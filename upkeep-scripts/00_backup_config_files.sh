#!/usr/bin/env bash
#______________________________________________________________________________
# SECTION: Ghostty

if [[ ! -d "$HOME/.config/ghostty/" ]]; then
	echo "You do not have a ghostty configuration"
	echo

	echo "Loading the default DezlyKit ghostty config."
	cp -r "$HOME/.config/dezlykit/saved-configs/default/ghostty/" "$HOME/.config/"
else

	echo "An existing ghostty configuration was found"
	echo

	perform_backup_of_ghostty_config=""

	# Prompt the user until they enter `y` or `n`
	while [[ "$perform_backup_of_ghostty_config" != "y" && "$perform_backup_of_ghostty_config" != "n" ]]; do
	read -p "Would you like to backup your ghostty config? (y / n) " perform_backup_of_ghostty_config

         if [[ "$perform_backup_of_ghostty_config" != "y" && "$perform_backup_of_ghostty_config" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
         fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.
	
	if [[ "$perform_backup_of_ghostty_config" == "y" ]]; then
	    # Remove the old default ghostty config
	    rm -rf "$HOME/.config/dezlykit/saved-configs/default/ghostty/"

	    # Copy the user's current nvim config as the new default
	    cp -r "$HOME/.config/ghostty/" "$HOME/.config/dezlykit/saved-configs/default/"

	    echo
	    echo "Your current ghostty configuration has replaced the default."
	fi
fi

#______________________________________________________________________________


#______________________________________________________________________________
