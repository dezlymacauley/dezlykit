#!/usr/bin/env bash

#______________________________________________________________________________
# A helper function to source all the files of a directory in `DezlyKit`

source_all() {
    dir="$1"
    for file in "$dir"/*.sh; do
        [ -r "$file" ] && (source "$file")
    done
}

#______________________________________________________________________________
# This will prepare the config files before trying to install or update
# anything.

echo
source_all "upkeep-scripts/"
echo

#______________________________________________________________________________

echo "Restart your system if this your first time running dezlykit_upkeep.sh"

#______________________________________________________________________________
