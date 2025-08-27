#!/usr/bin/env bash

install_upgrade_arch_linux() {
    local answer=""

    while [[ "$answer" != "y" && "$answer" != "n" ]]; do
        read -p "Would you like to upgrade Arch Linux? (y / n) " answer

        if [[ "$answer" != "y" && "$answer" != "n" ]]; then
            echo "Invalid response. Please enter y or n."
        fi
    done

    if [[ "$answer" == "y" ]]; then
	echo
	sudo pacman -Syu
    else
        echo "Arch Linux upgrade canceled."
    fi
}

install_upgrade_arch_linux
