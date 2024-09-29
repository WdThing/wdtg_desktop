#!/usr/bin/env bash

xinput set-prop "pointer:Logitech G305" "libinput Accel Profile Enabled" 0 1 0
xrandr --output DisplayPort-1 --primary --mode 1920x1080 --rate 144.00 --set "Colorspace" "BT2020_RGB"
xrandr --output DisplayPort-2 --mode 1920x1080 --rate 144.00 --set "Colorspace" "BT2020_RGB"
