#!/usr/bin/env bash

# Install yay
command -v yay >/dev/null 2>&1 || sudo pacman -S yay

# General packages (x11 or wayland)
base_packages="baobab
btop
corectrl
easyeffects
fastfetch
flatpak
fluidsynth
gnome-disk-utility
gparted
imv
kitty
lm_sensors
lsp-plugins-lv2
mda.lv2
mpv
neovim
network-manager-applet
nwg-look
polkit-gnome
thunar
thunar-archive-plugin
thunar-volman
tumbler
unzip
xarchiver
zip
zsh
"
gaming_packages="alsa-plugins
gamemode
gamescope
giflib
glfw
gst-plugins-base-libs
lib32-alsa-plugins
lib32-giflib
lib32-gst-plugins-base-libs
lib32-gtk3
lib32-libjpeg-turbo
lib32-libva
lib32-mangohud
lib32-mpg123
lib32-ocl-icd
lib32-openal
lib32-opencl-icd-loader
libjpeg-turbo
libva
libxslt
mangohud
mpg123
obs-studio
openal
opencl-icd-loader
steam
steam-native-runtime
vulkan-tools
wine
winetricks
"
font_packages="noto-fonts-emoji
otf-font-awesome
ttf-liberation
ttf-meslo-nerd-font-powerlevel10k
"

echo "__________________________________________________"
echo "Installing base packages (yay)"
echo "__________________________________________________"
yay -Syu --needed ${base_packages} ${gaming_packages} ${font_packages}

# Flatpak packages
echo "__________________________________________________"
echo "Installing flatpak applications"
echo "__________________________________________________"
flatpak install flathub io.github.spacingbat3.webcord

# Lazyvim
echo "__________________________________________________"
echo "Installing Lazy Vim"
echo "__________________________________________________"
rm -rf ~/.config/nvim.bak
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Change default shell
echo "__________________________________________________"
echo "Changing default shell to ZSH"
echo "__________________________________________________"
chsh -s /usr/bin/zsh