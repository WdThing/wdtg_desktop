#!/usr/bin/env bash

if [[ $1 == "i3" ]]; then 
    echo "Installing i3wm"
elif [[ $1 == "sway" ]]; then
    echo "Installing sway"
elif [[ $1 == "hyprland" ]]; then
    echo "Installing hyprland"
else
    echo "First parameter must be the wm selected: i3, sway, hyprland"
    exit 10
fi

project_dir=$(dirname "$0")

# Install base packages
${project_dir}/scripts/core_packages.sh

# Install WM specific packages
if [[ $1 == "i3" ]]; then
    ${project_dir}/scripts/i3_packages.sh
elif [[ $1 == "sway" ]]; then
    ${project_dir}/scripts/sway_packages.sh
elif [[ $1 == "hyprland"  ]]; then
    ${project_dir}/scripts/hyprland_packages.sh
fi

# Move home
${project_dir}/scripts/copy_to_home.sh ${project_dir}

# Disable page
sudo ${project_dir}/scripts/disable_page.sh

# Include colemak layout
sudo ${project_dir}/extra/keyboard/install_colemak.sh

# Enable zram
sudo ${project_dir}/extra/zram/install_zram.sh

echo "__________________________________________________"
echo "Finished installation, please reboot"
echo "__________________________________________________"

notify-send "Finished installation, please reboot"
