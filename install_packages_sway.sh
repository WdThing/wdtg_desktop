#!/usr/bin/env bash

# Base packages
yay -Syu --needed swaylock-effects swaybg swayidle sway xorg-xwayland neofetch grim slurp wlogout flatpak mpv imv thunar ranger kitty fuzzel btop mako neovim zsh corectrl waybar noto-fonts-emoji ttf-meslo-nerd-font-powerlevel10k otf-font-awesome nwg-look-bin wl-clipboard lm_sensors polkit-gnome mangohud gamemode gnome-disk-utility gparted steam-devices-git noise-suppression-for-voice obs-studio v4l2loopback-dkms xdg-desktop-portal-wlr xdg-desktop-portal-gtk wev python-pip autotiling-git baobab wlsunset ydotool tumbler thunar-archive-plugin xarchiver

# Lazyvim
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git