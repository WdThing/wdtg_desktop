#!/usr/bin/bash

echo "Installing colemak international custom keyboard"

sudo cp ./symbols/custom /usr/share/X11/xkb/symbols
sudo mv /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.bak
sudo cp ./rules/evdev.xml /usr/share/X11/xkb/rules
