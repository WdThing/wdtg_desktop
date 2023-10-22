#!/usr/bin/env bash

sudo echo "export MOZ_ENABLE_WAYLAND=1 # for firefox to run on wayland
export MOZ_WEBRENDER=1
export WLR_NO_HARDWARE_CURSORS=1
export XDG_CURRENT_DESKTOP=sway # xdg-desktop-portal
export XDG_SESSION_DESKTOP=sway # systemd
export XDG_SESSION_TYPE=wayland # xdg/systemd
" >> /etc/environment
