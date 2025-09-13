# Check battery
alias battery="acpi"

#______________________________________________________________________________
# Control screen brightness

# WARNING: Do not set to 0% or your screen will go completely black.
alias b1="brightnessctl set 1%"
alias b2="brightnessctl set 2%"
alias b4="brightnessctl set 4%"
alias b5="brightnessctl set 5%"
alias b10="brightnessctl set 10%"
alias b20="brightnessctl set 20%"
alias b25="brightnessctl set 25%"
alias b50="brightnessctl set 50%"
alias b100="brightnessctl set 100%"

#______________________________________________________________________________
# Improves the appearance of the `ls` command.
alias ls="lsd"

#______________________________________________________________________________
# Shows all sub-directories and files, 
# excluding the ones in the `.gitignore`
alias tree="tree -a --gitignore"

#______________________________________________________________________________

alias dk="cd $HOME/.config/dezlykit/ && nvim ."

#______________________________________________________________________________

# Edit Local configuration files

alias edit_ghostty="cd $HOME/.config/ghostty/ && nvim ."
alias edit_hyprland="cd $HOME/.config/hypr/ && nvim ."
alias edit_neovim="cd $HOME/.config/nvim/ && nvim ."

#______________________________________________________________________________

# Add custom zsh settings

alias zsh_private_workflow="cd $HOME/.config/zsh/private-workflow/ && nvim ."

#______________________________________________________________________________
