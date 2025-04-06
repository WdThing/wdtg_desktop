#!/usr/bin/env bash

# Base packages
yay -Syu --needed acpi arandr arc-gtk-theme-eos archlinux-xdg-menu dex dmenu dunst eos-settings-i3wm endeavouros-xfce4-terminal-colors eos-lightdm-slick-theme eos-qogir-icons feh galculator gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb i3-wm i3blocks i3lock-color i3status jq lightdm lightdm-slick-greeter nwg-look mpv network-manager-applet numlockx playerctl polkit-gnome rofi maim sysstat thunar thunar-archive-plugin thunar-volman tumbler unzip xarchiver xbindkeys xdg-user-dirs-gtk xed xfce4-terminal xorg-xbacklight xorg-xdpyinfo zip picom kitty perl-anyevent-i3 neovim imv

# Lazyvim
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git