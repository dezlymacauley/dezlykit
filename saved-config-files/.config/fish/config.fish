#______________________________________________________________________________

# SECTION: Path Statements

#______________________________________________________________________________

# Globally installed npm packages

# Creates a custom directory for npm packages installed with the `-g` flag.
# E.g. `npm install -g typescript`
#
# if not test -d $HOME/.npm-global-pkgs
#     mkdir $HOME/.npm-global-pkgs
# end

# Checks if `npm` is available, then sets the npm prefix to
# the custom directory.
#
# if command -q npm
#     if test (npm config get prefix) != $HOME/.npm-global-pkgs
#         npm config set prefix $HOME/.npm-global-pkgs
#     end
# end

# Adds the Bun global binary directory to PATH.
fish_add_path "$HOME/.bun/bin"

# `bun install -g ...` installs global binaries here.

#______________________________________________________________________________

# SUB_SECTION: Rust and Solana

# Allows the shell to access binaries of Rust packages installed with:
# `cargo install name-of-package`
# or:
# `cargo binstall name-of-package`
fish_add_path "$HOME/.cargo/bin"

# Allows the shell to access the Solana CLI.
fish_add_path "$HOME/.local/share/solana/install/active_release/bin"

# Allows the shell to access the Surfpool CLI.
#
# fish_add_path "$HOME/.local/bin/surfpool-cli"

#______________________________________________________________________________

# SUB_SECTION: Python

# Allows the shell to access binaries of Python packages installed with:
# `uv tool install name-of-package`
fish_add_path "$HOME/.local/bin"

#______________________________________________________________________________

# SUB_SECTION: Go

# Keeps Go from creating a `go` directory directly in the home directory.
set -gx GOPATH "$HOME/.go-global-pkgs"
set -gx GOBIN "$GOPATH/bin"

# Allows the shell to access binaries of Go packages installed with:
# `go install name-of-package`
fish_add_path "$GOBIN"

#______________________________________________________________________________

# SUB_SECTION: Other Environment Settings

# Set Firefox as the default browser.
#
# if command -q firefox
#     set -gx BROWSER firefox
# end

# Skips the telemetry prompt when installing packages with `cargo-binstall`.
if command -q cargo-binstall
    set -Ux BINSTALL_DISABLE_TELEMETRY true
end

#______________________________________________________________________________

# SECTION: Fish Settings

# Disables the default Fish greeting.
set -U fish_greeting

#______________________________________________________________________________

# SECTION: Alias Statements

# Use `lsd` instead of the standard `ls` command when available.
if command -q lsd
    alias ls="lsd"
end

#______________________________________________________________________________

# SECTION: GitHub Repos

# Environment Variables
set -g GH_PUBLIC "$HOME/local-workspace/github/public"
set -g GH_PRIVATE "$HOME/local-workspace/github/private"

alias github-public="cd $GH_PUBLIC"
alias github-private="cd $GH_PRIVATE"
alias dezlykit="cd $GH_PUBLIC/dezlykit"

#______________________________________________________________________________

# SECTION: Codeberg Repos

# Environment Variables
#
# set -g CB_PUBLIC "$HOME/local-workspace/codeberg/public"
# set -g CB_PRIVATE "$HOME/local-workspace/codeberg/private"
#
# DezlyKit
# alias dezlykit-arch-linux="cd $CB_PUBLIC/dezlykit-arch-linux"
#
# Journals
# alias docker-journal="cd $CB_PUBLIC/docker-journal"
# alias go-journal="cd $CB_PUBLIC/go-journal"
# alias postgres-journal="cd $CB_PUBLIC/postgres-journal"
# alias python-journal="cd $CB_PUBLIC/python-journal"
# alias rust-journal="cd $CB_PUBLIC/rust-journal"
# alias typescript-journal="cd $CB_PUBLIC/typescript-journal"
#
# Workflows
# alias mise-docker-workflow="cd $CB_PUBLIC/mise-docker-workflow"
# alias mise-postgres-workflow="cd $CB_PUBLIC/mise-postgres-workflow"

#______________________________________________________________________________

# SECTION: Configuration Aliases

alias cfgfish="cd $HOME/.config/fish && nvim ."
alias cfgghostty="cd $HOME/.config/ghostty && nvim ."
alias cfghyprland="cd $HOME/.config/hypr && nvim ."
alias cfgneovim="cd $HOME/.config/nvim && nvim ."
alias cfgyazi="cd $HOME/.config/yazi && nvim ."
alias cfgzellij="cd $HOME/.config/zellij && nvim ."

#______________________________________________________________________________

# SECTION: System Aliases

alias wallpaper_reload="systemctl --user restart hyprpaper.service"

alias disk-space-internal="df -h /"
alias disk-space-external="df -h /run/media/$USER/sg-800"

alias fsize="du -sh"
alias dsize="du -sh"

alias battery="acpi"

function brightness
    if test "$argv[1]" -eq 0
        echo "Brightness cannot be 0%"
        return 0
    end

    brightnessctl set "$argv[1]%"
end

#______________________________________________________________________________

# SECTION: Custom Functions

function list_path_variable_contents
    printf "%s\n" $PATH
end

#______________________________________________________________________________

# SECTION: External Drive Management

set -gx seagate_external_drive_mount_point "/run/media/$USER/sg-800"

function seagate_external_drive
    if cd "$seagate_external_drive_mount_point" 2>/dev/null
        # `cd` succeeded; nothing else to do.
        true
    else
        echo
        echo "Seagate external drive is not connected."
        echo
    end
end

function safely_remove_seagate_external_drive
    sync
    udiskie-umount "$seagate_external_drive_mount_point"
    sync
end

#______________________________________________________________________________

# SECTION: Source Statements

# Loads the `mise` polyglot tool version manager.
if command -q mise
    mise activate fish | source
end

# Loads the `starship` shell prompt if `starship` is installed.
if command -q starship
    starship init fish | source
end

#______________________________________________________________________________
