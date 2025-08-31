# ☯️ DezlyKit

## About
A terminal-centric Arch Linux + Hyprland + Neovim workflow 
for AI Engineers and Polyglot Programmers 

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

/009   01_zsh.sh
```
_______________________________________________________________________________

