#!/usr/bin/env bash

#______________________________________________________________________________

# Automatic CPU speed & power optimizer for Linux. 
# Actively monitors laptop battery state, 
# CPU usage, CPU temperature, and system load, 
# ultimately allowing you to improve battery life without 
# making any compromises.
paru -S --needed autocpufreq

# You need an authentication agent to run the command,
# systemctl enable --now auto-cpufreq 
sudo pacman -S --needed hyprpolkitagent

#______________________________________________________________________________

# Start autocpufreq and set it to automatically be active at boot.
# systemctl enable --now auto-cpufreq 

# NOTE: You only need to run the command above once, 
# and then you can uncomment it.

#______________________________________________________________________________
