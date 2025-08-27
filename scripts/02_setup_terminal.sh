#!/usr/bin/env bash

#______________________________________________________________________________
# Install terminal tools

sudo pacman -S --needed acpi
echo

sudo pacman -S --needed bat
echo

sudo pacman -S --needed brightnessctl
echo

sudo pacman -S --needed direnv
echo

sudo pacman -S --needed ghostty
echo

sudo pacman -S --needed git
echo

sudo pacman -S --needed lsd
echo

sudo pacman -S --needed starship
echo

sudo pacman -S --needed trash-cli
echo

sudo pacman -S --needed tree
echo

sudo pacman -S --needed udiskie
echo

sudo pacman -S --needed yazi
echo

#______________________________________________________________________________
# Load .bashrc config from `saved-configs` 
# or save current config to `saved-configs`

load_save_bashrc() {
	 
    local answer=""
    local bashrc_from_config_vault="$HOME/.config/dezlykit/saved-configs/home/.bashrc"

    while [[ "$answer" != "y" && "$answer" != "n" ]]; do
        read -p "Replace current .bashrc with the saved-config from dezlykit? (y / n) " answer

        if [[ "$answer" != "y" && "$answer" != "n" ]]; then
            echo "Invalid response. Please enter y or n."
        fi
    done

    if [[ "$answer" == "y" ]]; then
	echo
        echo "Replacing current .bashrc with the saved-config from dezlykit"
	touch $HOME/.bashrc
	rm $HOME/.bashrc
	cp "$bashrc_from_config_vault" "$HOME/"
    else
        echo "No changes will be made to your current .bashrc"
	echo
    fi
}

load_save_bashrc

#______________________________________________________________________________
