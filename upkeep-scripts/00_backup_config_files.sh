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
echo

#______________________________________________________________________________
# SECTION: Ghostty

if [[ ! -d "$HOME/.config/ghostty/" ]]; then
	echo "No custom ghostty configuration was found"
	echo

	echo "A default configuration will be loaded from DezlyKit/saved-configs"
    cp -r "$DEFAULT_SAVED_CONFIGS/ghostty/" "$HOME/.config/"
    echo "================================================================"
    echo
else
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
        echo "================================================================"
        echo
	fi

fi

#______________________________________________________________________________
# SECTION: Hyprland

if [[ ! -d "$HOME/.config/ghostty/" ]]; then
	echo "No custom Hyprland configuration was found"

	echo "A default configuration will be loaded from DezlyKit/saved-configs"
    cp -r "$DEFAULT_SAVED_CONFIGS/hypr/" "$HOME/.config/"
    echo "================================================================"
    echo
else
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
        echo "================================================================"
        echo
	fi

fi

#______________________________________________________________________________
# SECTION: mpv

if [[ ! -d "$HOME/.config/mpv/" ]]; then
	echo "No custom mpv configuration was found"
	echo

	echo "A default configuration will be loaded from DezlyKit/saved-configs"
    echo "================================================================"
    cp -r "$DEFAULT_SAVED_CONFIGS/mpv/" "$HOME/.config/"
    echo
else
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
        echo "================================================================"
        echo
	fi

fi

#______________________________________________________________________________
# SECTION: Neovim

if [[ ! -d "$HOME/.config/nvim/" ]]; then
	echo "No custom Neovim configuration was found"
    echo "================================================================"
	echo

	echo "A default configuration will be loaded from DezlyKit/saved-configs"
    cp -r "$DEFAULT_SAVED_CONFIGS/nvim/" "$HOME/.config/"
    echo
else
	echo "⌨️ DezlyKit has detected your existing Neovim configuration."
	echo

	backup_neovim=""
	
        while [[ "$backup_neovim" != "y" && "$backup_neovim" != "n" ]]; do
	    read -p "Backup Neovim config? (y / n) " backup_neovim

         if [[ "$backup_neovim" != "y" && "$backup_neovim" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
         fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.

	if [[ "$backup_neovim" == "y" ]]; then
        # Delete the default config saved in DezlyKit
	    rm -rf "$DEFAULT_SAVED_CONFIGS/nvim/"

        # Replace the default DezlyKit config with the user's current 
        # configuration.
	    cp -r "$HOME/.config/nvim/" "$DEFAULT_SAVED_CONFIGS"

	    echo
	    echo "Your current Neovim configuration has been saved to DezlyKit"
        echo "================================================================"
        echo
	fi

fi

#______________________________________________________________________________
# SECTION: Rofi

if [[ ! -d "$HOME/.config/rofi/" ]]; then
	echo "No custom Rofi configuration was found"
    echo "================================================================"
	echo

	echo "A default configuration will be loaded from DezlyKit/saved-configs"
    cp -r "$DEFAULT_SAVED_CONFIGS/rofi/" "$HOME/.config/"
    echo
else
	echo "🚪 DezlyKit has detected your existing Rofi configuration."
	echo

	backup_rofi=""
	
        while [[ "$backup_rofi" != "y" && "$backup_rofi" != "n" ]]; do
	    read -p "Backup Rofi config? (y / n) " backup_rofi

         if [[ "$backup_rofi" != "y" && "$backup_rofi" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
         fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.

	if [[ "$backup_rofi" == "y" ]]; then
        # Delete the default config saved in DezlyKit
	    rm -rf "$DEFAULT_SAVED_CONFIGS/rofi/"

        # Replace the default DezlyKit config with the user's current 
        # configuration.
	    cp -r "$HOME/.config/rofi/" "$DEFAULT_SAVED_CONFIGS"

	    echo
	    echo "Your current Rofi configuration has been saved to DezlyKit"
        echo "================================================================"
        echo
	fi

fi

#______________________________________________________________________________
# SECTION: Yazi

if [[ ! -d "$HOME/.config/yazi/" ]]; then
	echo "No custom Yazi configuration was found"
    echo "================================================================"
	echo

	echo "A default configuration will be loaded from DezlyKit/saved-configs"
    cp -r "$DEFAULT_SAVED_CONFIGS/yazi/" "$HOME/.config/"
    echo
else
	echo "🦆 DezlyKit has detected your existing Yazi configuration."
	echo

	backup_yazi=""
	
        while [[ "$backup_yazi" != "y" && "$backup_yazi" != "n" ]]; do
	    read -p "Backup Yazi config? (y / n) " backup_yazi

         if [[ "$backup_yazi" != "y" && "$backup_yazi" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
         fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.

	if [[ "$backup_yazi" == "y" ]]; then
        # Delete the default config saved in DezlyKit
	    rm -rf "$DEFAULT_SAVED_CONFIGS/yazi/"

        # Replace the default DezlyKit config with the user's current 
        # configuration.
	    cp -r "$HOME/.config/yazi/" "$DEFAULT_SAVED_CONFIGS"

	    echo
	    echo "Your current Yazi configuration has been saved to DezlyKit"
        echo "================================================================"
        echo
	fi

fi

#______________________________________________________________________________
# SECTION: Starship

if [[ ! -f "$HOME/.config/starship.toml" ]]; then
	echo "No custom Starship configuration was found"
    echo "================================================================"
	echo

	echo "A default configuration will be loaded from DezlyKit/saved-configs"
    cp -r "$DEFAULT_SAVED_CONFIGS/starship.toml" "$HOME/.config/"
    echo
else
	echo "🚀 DezlyKit has detected your existing Starship configuration."
	echo

	backup_starship=""
	
        while [[ "$backup_starship" != "y" && "$backup_starship" != "n" ]]; do
	    read -p "Backup Starship config? (y / n) " backup_starship

        if [[ "$backup_starship" != "y" && "$backup_starship" != "n" ]]; then
             echo "Invalid response. Please enter y or n."
        fi

	done

	# If the user selected yes then replace the default dezlykit config 
	# with the user's current configuration.
	if [[ "$backup_starship" == "y" ]]; then
        # Delete the default config saved in DezlyKit
	    rm -rf "$DEFAULT_SAVED_CONFIGS/starship.toml"

        # Replace the default DezlyKit config with the user's current 
        # configuration.
	    cp -r "$HOME/.config/starship.toml" "$DEFAULT_SAVED_CONFIGS"

	    echo
	    echo "Your current Starship configuration has been saved to DezlyKit"
        echo "================================================================"
        echo
	fi

fi

#______________________________________________________________________________

echo
