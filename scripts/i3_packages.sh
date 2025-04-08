#!/usr/bin/env bash

echo "__________________________________________________"
echo "Installing i3 packages (yay)"
echo "__________________________________________________"
i3_packages="acpi
arandr
arc-gtk-theme
archlinux-xdg-menu
dex
dunst
feh
galculator
gvfs
gvfs-afc
gvfs-gphoto2
gvfs-mtp
gvfs-nfs
gvfs-smb
i3-wm
i3blocks
i3lock-color
i3status
jq
lightdm
lightdm-slick-greeter
maim
numlockx
perl-anyevent-i3
picom
playerctl
qogir-icon-theme
rofi
sysstat
xbindkeys
xclip
xdg-user-dirs-gtk
xed
xfce4-terminal
xkblayout-state-git
xorg-xbacklight
xorg-xdpyinfo"
yay -Syu --needed ${i3_packages}