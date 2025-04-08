#!/usr/bin/env bash

declare -A tracked_dirs

# Dirs to be copied to ./home/.config
tracked_dirs["$HOME/.config/sway"]="./home/.config"
tracked_dirs["$HOME/.config/waybar"]="./home/.config"
tracked_dirs["$HOME/.config/MangoHud"]="./home/.config"
tracked_dirs["$HOME/.config/kitty"]="./home/.config"
tracked_dirs["$HOME/.config/gtk-3.0"]="./home/.config"
tracked_dirs["$HOME/.config/pipewire"]="./home/.config"
tracked_dirs["$HOME/.config/autostart"]="./home/.config"
tracked_dirs["$HOME/.config/dunst"]="./home/.config"
tracked_dirs["$HOME/.config/gtk-4.0"]="./home/.config"
tracked_dirs["$HOME/.config/i3"]="./home/.config"
tracked_dirs["$HOME/.config/nwg-look"]="./home/.config"
tracked_dirs["$HOME/.config/rofi"]="./home/.config"
tracked_dirs["$HOME/.config/xsettingsd"]="./home/.config"
tracked_dirs["$HOME/.config/picom"]="./home/.config"

# Dirs to be copied to .local/share
tracked_dirs["$HOME/.local/share/nwg-look"]="./home/.local/share"
tracked_dirs["$HOME/.local/share/rofi"]="./home/.local/share"

# Dirs to be copied to ./home
tracked_dirs["$HOME/.zshrc"]="./home"
tracked_dirs["$HOME/.bashrc"]="./home"
tracked_dirs["$HOME/.p10k.zsh"]="./home"
tracked_dirs["$HOME/.XCompose"]="./home"
tracked_dirs["$HOME/.Xresources"]="./home"
tracked_dirs["$HOME/.profile"]="./home"

echo "Copying files and directories:"
for key in "${!tracked_dirs[@]}"; do
  echo "Copying $key to ${tracked_dirs[$key]}"
  mkdir -p "${tracked_dirs[$key]}"
  cp -r "$key" "${tracked_dirs[$key]}"
done

echo "Finished updating project files"