#!/usr/bin/env bash

#______________________________________________________________________________
# A helper function to source all of the files 
# in the `dezlykit/initial-setup-scripts` directory.

source_all() {
    dir="$1"
    for file in "$dir"/*.sh; do
        [ -r "$file" ] && (source "$file")
    done
}

#______________________________________________________________________________

echo
source_all "$HOME/.config/dezlykit/initial-setup-scripts/"
echo

#______________________________________________________________________________
