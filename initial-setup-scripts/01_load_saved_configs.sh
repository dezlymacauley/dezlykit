#!/usr/bin/env bash

echo "Loading default DezlyKit configurations"
echo

#______________________________________________________________________________
# SECTION: Ghostty Config 

echo "Removing any existing Ghostty configuration files"
echo
rm -rf $HOME/.config/ghostty/

echo "Copying the last saved DezlyKit Ghostty config to your home directory"
cp -r $HOME/.config/dezlykit/saved-configs/default/ghostty/ $HOME/.config/

#______________________________________________________________________________
# SECTION: Hyprland Config 

echo "Removing any existing Hyprland configuration files"
echo
rm -rf $HOME/.config/hypr/

echo "Copying the last saved DezlyKit Hyprland config to your home directory"
cp -r $HOME/.config/dezlykit/saved-configs/default/hypr/ $HOME/.config/

#______________________________________________________________________________
# SECTION: Neovim Config 

echo "Removing any existing Neovim configuration files"
echo
rm -rf $HOME/.config/nvim/

echo "Copying the last saved DezlyKit Neovim config to your home directory"
cp -r $HOME/.config/dezlykit/saved-configs/default/nvim/ $HOME/.config/

#______________________________________________________________________________
# SECTION: Rofi Config

echo "Removing any existing Rofi configuration files"
echo
rm -rf $HOME/.config/rofi/

echo "Copying the last saved DezlyKit Rofi config to your home directory"
cp -r $HOME/.config/dezlykit/saved-configs/default/rofi/ $HOME/.config/

#______________________________________________________________________________
# SECTION: Starship Config 

echo "Removing any existing Starship configuration files"
echo
rm -rf $HOME/.config/starship.toml

echo "Copying the last saved DezlyKit Starship config to your home directory"
cp $HOME/.config/dezlykit/saved-configs/default/starship.toml $HOME/.config/

#______________________________________________________________________________
# SECTION: Yazi

echo "Removing any existing Yazi configuration files"
echo
rm -rf $HOME/.config/yazi/

echo "Copying the last saved DezlyKit Yazi config to your home directory"
cp -r $HOME/.config/dezlykit/saved-configs/default/yazi/ $HOME/.config/

#______________________________________________________________________________
# SECTION: ZSH Config

echo "Removing any existing ZSH configuration files"
echo
rm -rf $HOME/.zshrc
rm -rf $HOME/.config/zsh/

echo "Copying the last saved DezlyKit ZSH config to your home directory"
cp $HOME/.config/dezlykit/saved-configs/default/.zshrc $HOME/
cp -r $HOME/.config/dezlykit/saved-configs/default/zsh/ $HOME/.config/

#______________________________________________________________________________
