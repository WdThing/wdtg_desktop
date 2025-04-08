#!/usr/bin/env bash

project_dir=$(dirname "$0")

# Install base packages
${project_dir}/scripts/base_packages.sh

# Install sway-specific packages
sway_packages="autotiling-git
fuzzel
grim
mako
slurp
sway
swaybg
swayidle
swaylock-effects
waybar
wev
wl-clipboard
wlogout
wlsunset
xdg-desktop-portal-gtk
xdg-desktop-portal-wlr
xorg-xwayland
ydotool"
yay -Syu --needed ${sway_packages}

# Move home
${project_dir}/scripts/copy_to_home.sh ${project_dir}