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
source_all "upkeep-scripts/00-prepare-config-files/"
echo

#______________________________________________________________________________
# Install all of the required packages

echo

(source upkeep-scripts/01_setup_paru_aur_helper.sh)
(source upkeep-scripts/02_perform_system_update.sh)
(source upkeep-scripts/03_setup_terminal.sh)
(source upkeep-scripts/04_version_fox.sh)
(source upkeep-scripts/05_setup_desktop_environment.sh)
(source upkeep-scripts/06_setup_rust.sh)
(source upkeep-scripts/07_python_tools.sh)
(source upkeep-scripts/08_setup_cpp.sh)
(source upkeep-scripts/09_go_setup.sh)
(source upkeep-scripts/10_zig_setup.sh)
(source upkeep-scripts/11_javascript_tools.sh)
(source upkeep-scripts/12_battery_life.sh)

echo

#______________________________________________________________________________

echo "Restart your system if this your first time running dezlykit_upkeep.sh"

#______________________________________________________________________________
