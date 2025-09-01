# ☯️ DezlyKit

## About
An opinionated terminal-centric workflow for AI Engineers 
and Polyglot Programmers. It uses 3 core technologies:
Arch Linux, Hyprland, and Neovim.

_______________________________________________________________________________
## License

DezlyKit is released under the BSD 3-Clause License
_______________________________________________________________________________
## Workflows Supported

- Low-Level Programming:    
    - 🦀 Rust
    - ➕ C++
    - 🦎 Zig
    - 🇨 C (Comming Soon)

- AI Engineering:           
    - 🐍 Python
    - 🔥 Mojo (Comming Soon)

- Backend Servers:           
    - 🐹 Go

- UX Design (Web & Mobile):
    - Web:
        - ⚡ Bun
        - 🟡 JavaScript
        - 🔵 TypeScript
        - 🔸 Svelte
        - 🔶 SvelteKit
        - ⚛️ React
        - 🔳 Next.js
        - 🎨 TailwindCSS
        - 🎞️ GSAP

    - Mobile:
        - 📱 React Native
        - 🍃 Nativewind

_______________________________________________________________________________
## ⚠️ Warning: Users of NVidia Hardware

One of the core technologies used in DezlyKit is Hyprland, 
which is known to be a problem for users who have `NVidia` hardware.

This why I avoid NVidia hardware in my current setup. 

However, many NVidia user have had success with the instructions 
listed on this page:
```
https://wiki.hypr.land/Nvidia/
```
_______________________________________________________________________________

## Warning: ⚠️ `DezlyKit` uses `ZSH` as the default interactive shell 

Do **NOT** install zsh. DezlyKit will set this up for you.

Please do not change your interactive shell to something else.

_______________________________________________________________________________
## Prerequisites: 

**1. new minimall Arch Install with an internet connection**

You must be logged into a freshly installed `Arch Linux` 
that has been installed with no desktop environment. 

If that sounds like a daunting task... Remember that NO ONE was born knowing
how to use Arch Linux and glide effortlessly in the terminal like an elite
hacker. 

I'm working on a step-by-step guide.

Everything from how to download the Arch Linux ISO, to verifying it,
to making a bootable drive, to the settings you may need in your BIOS,
to using modern installation methods like `archinstall`.

_______________________________________________________________________________
## How to install `DezlyKit`
_______________________________________________________________________________
#### Step 1: Install git
```sh
sudo pacman -S --needed git
```
_______________________________________________________________________________
#### Step 2: Clone the `DezlyKit` repository
```sh
git clone --depth 1 \
https://github.com/dezlymacauley/dezlykit.git \
$HOME/.config/dezlykit
```
_______________________________________________________________________________
#### Step 3: Load the default `DezlyKit` configurations

```sh
cd $HOME/.config/dezlykit
./initial_setup.sh
```

You will need to restart your system after this so that `ZSH` 
and `Version Fox` work properly.

NOTE:
1. This script should only be used once.
2. This script assumes that you are starting from a clean slate,
minimall install (no desktop environment) Arch Linux.

_______________________________________________________________________________
#### Step 4: Install the required packages

```sh
cd $HOME/.config/dezlykit
./upkeep_dezlykit.sh
```
Note: I have designed this script to be idempotent. This means that you can
run this script repeatedly. 

It is used to install required packages, update your system, 
and provide you with the option to back up your configuration.

_______________________________________________________________________________
#### Step 5: Enter Hyprland

First login into Arch Linux, then simply type:

```sh
Hyprland
```

_______________________________________________________________________________
