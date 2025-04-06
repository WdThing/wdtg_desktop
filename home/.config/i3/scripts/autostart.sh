#!/usr/bin/env bash

xinput set-prop "pointer:Logitech G305" "libinput Accel Profile Enabled" 0 1 0
xrandr --output DisplayPort-0 --primary --mode 1920x1080 --rate 140
xrandr --output DisplayPort-2 --mode 1920x1080 --rate 140
pactl unload-module module-remap-sink && pactl load-module module-remap-sink sink_name=Virtual_Output_Specific sink_properties=device.description="Virtual_Output_Specific"
~/.config/i3/scripts/set-mouse-sensitivity.sh
