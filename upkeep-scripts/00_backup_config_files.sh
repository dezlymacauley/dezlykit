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
	    rm -rf "$HOME/.config/dezlykit/saved-configs/default/ghostty/"
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
