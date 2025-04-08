#!/usr/bin/env bash

echo "__________________________________________________"
echo "Installing sway packages (yay)"
echo "__________________________________________________"
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