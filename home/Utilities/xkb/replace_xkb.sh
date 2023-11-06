#!/usr/bin/bash

sudo cp ./symbols/custom /usr/share/X11/xkb/symbols
sudo mv /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.bak
sudo cp ./rules/evdev.xml /usr/share/X11/xkb/rules
