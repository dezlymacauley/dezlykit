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

# Start autocpufreq
systemctl enable --now auto-cpufreq 
