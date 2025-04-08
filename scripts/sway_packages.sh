#!/usr/bin/env bash

echo "__________________________________________________"
echo "Installing sway packages (yay)"
echo "__________________________________________________"
sway_packages="autotiling-git
azore
egl-wayland
fuzzel
gkt-layer-shell
grim
gtk-engine-murrine
gtklock
gtklock-powerbar-module
gtklock-userinfo-module
mako
nwg-drawer
slurp
swappy
sway
sway-contrib
swaybg
swayidle
swaylock-effects
waybar
wayland-protocols
wev
wl-clipboard
wlogout
wlsunset
xdg-desktop-portal-gtk
xdg-desktop-portal-wlr
xed
xorg-xwayland
ydotool"
yay -Syu --needed ${sway_packages}