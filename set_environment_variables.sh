#!/usr/bin/env bash

sudo echo "MOZ_ENABLE_WAYLAND=1 # for firefox to run on wayland
MOZ_WEBRENDER=1
WLR_NO_HARDWARE_CURSORS=1
XDG_CURRENT_DESKTOP=sway # xdg-desktop-portal
XDG_SESSION_DESKTOP=sway # systemd
XDG_SESSION_TYPE=wayland # xdg/systemd
" >> /etc/environment
