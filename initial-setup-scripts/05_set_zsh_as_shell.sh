#!/usr/bin/env bash
#______________________________________________________________________________

# Change the default shell to Zsh for the current user
echo "Setting Zsh as the default shell..."

# Warning. Don't run this command with sudo or it will user
sudo chsh -s "$(command -v zsh)" "$(whoami)"

echo "Please reboot your system"
