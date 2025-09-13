#!/usr/bin/env bash

# A cross-platform open-source machine emulator and virtualizer.
sudo pacman -S --needed qemu-full

# A GUI to manager create and manage virtual machines.
sudo pacman -S --needed virt-manager

# libvirt is a daemon (a local API server). When started, it listens for
# requests/instructions from the client (virt-manager), and then passes
# those instructions on in a format that QEMU understands.
#
# This package is actually part of qemu-full but I like to list it here
# for an understanding of how things work.
sudo pacman -S --needed libvirt

#______________________________________________________________________________

# NOTE: The package below take a long time to install so comment it out after
# the first install.

# paru -S --needed arm-linux-gnueabihf-gcc

# This is a cross-compiler
# That allows you to compile a target such a C code,
# into a 32-bit ARM executable. 

#______________________________________________________________________________
