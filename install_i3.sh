#!/usr/bin/env bash

project_dir=$(dirname "$0")

# Install base packages
${project_dir}/scripts/base_packages.sh

# Install i3-specific packages
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

# Move home
${project_dir}/scripts/copy_to_home.sh ${project_dir}