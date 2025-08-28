#!/usr/bin/env bash

#______________________________________________________________________________
# Neovim

#______________________________________________________________________________
# Bash

# load_save_bashrc() {
#
#     local answer=""
#     local bashrc_from_config_vault="$HOME/.config/dezlykit/saved-configs/home/.bashrc"
#
#     while [[ "$answer" != "y" && "$answer" != "n" ]]; do
#         read -p "Replace current .bashrc with the saved-config from dezlykit? (y / n) " answer
#
#         if [[ "$answer" != "y" && "$answer" != "n" ]]; then
#             echo "Invalid response. Please enter y or n."
#         fi
#     done
#
#     if [[ "$answer" == "y" ]]; then
# 	echo
#         echo "Replacing current .bashrc with the saved-config from dezlykit"
# 	touch $HOME/.bashrc
# 	rm $HOME/.bashrc
# 	cp "$bashrc_from_config_vault" "$HOME/"
#     else
#         echo "No changes will be made to your current .bashrc"
# 	echo
#     fi
# }
#
# load_save_bashrc

#______________________________________________________________________________
