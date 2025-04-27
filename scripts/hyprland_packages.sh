#!/usr/bin/env bash

echo "__________________________________________________"
echo "Installing hyprland packages (yay)"
echo "__________________________________________________"
sway_packages="azote
egl-wayland
fuzzel
gtk-layer-shell
grim
gtk-engine-murrine
gtklock
gtklock-powerbar-module
gtklock-userinfo-module
mako
nwg-drawer
qt5-wayland
qt6-wayland
slurp
swappy
hyprland
hypridle
hyprlock
hyprpaper
hyprsunset
hyprsome
waybar
wayland-protocols
wev
wl-clipboard
wlogout
xdg-desktop-portal-gtk
xdg-desktop-portal-hyprland
xed
xorg-xwayland
ydotool"
yay -Syu --needed --answerclean=None --answerdiff=None ${sway_packages}

