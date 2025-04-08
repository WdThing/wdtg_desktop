#!/usr/bin/bash


echo "__________________________________________________"
echo "Installing colemak international custom keyboard"
echo "__________________________________________________"

local_dir=$(dirname "$0")

sudo cp ${local_dir}/symbols/custom /usr/share/X11/xkb/symbols
if [ -f /usr/share/X11/xkb/rules/evdev.xml ]; then
    sudo mv /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.bak
fi
sudo cp ${local_dir}/rules/evdev.xml /usr/share/X11/xkb/rules
