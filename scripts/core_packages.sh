#!/usr/bin/env bash

# Install yay
command -v yay >/dev/null 2>&1 || sudo pacman -S yay

# General packages (x11 or wayland)
base_packages="acpi
arc-gtk-theme
baobab
btop
corectrl
easyeffects
eza
fastfetch
fish
flatpak
fluidsynth
gnome-disk-utility
gparted
gvfs
gvfs-afc
gvfs-gphoto2
gvfs-mtp
gvfs-nfs
gvfs-smb
imv
jq
kitty
lm_sensors
lsp-plugins-lv2
ly
mda.lv2
mpv
neovim
network-manager-applet
ntfs-3g
nwg-look
polkit-gnome
realtime-privileges
redshift
thunar
thunar-archive-plugin
thunar-volman
tumbler
unzip
xarchiver
zip
zram-generator
"
gaming_packages="alsa-plugins
discord
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
lutris
mangohud
mpg123
obs-studio
openal
opencl-icd-loader
protonup-qt
steam
steam-native-runtime
vulkan-tools
wine
winetricks
"
font_packages="awesome-terminal-fonts
noto-fonts-emoji
ttf-jetbrains-mono
ttf-liberation
ttf-meslo-nerd-font-powerlevel10k
ttf-nerd-fonts-symbols
ttf-ubuntu-font-family
"
programming_packages="code
python
python-pip
"

echo "__________________________________________________"
echo "Installing base packages (yay)"
echo "__________________________________________________"
yay -Syu --needed --answerclean=None --answerdiff=None ${base_packages} ${gaming_packages} ${font_packages} ${programming_packages}

echo "__________________________________________________"
echo "Including user in realtime group"
echo "__________________________________________________"
sudo usermod -a -G realtime $USER

# Flatpak packages
echo "__________________________________________________"
echo "Enabling ly (dm)"
echo "__________________________________________________"
systemctl enable ly.service

# Lazyvim
echo "__________________________________________________"
echo "Installing Lazy Vim"
echo "__________________________________________________"
rm -rf ~/.config/nvim.bak
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

echo "__________________________________________________"
echo "Installing fisher"
echo "__________________________________________________"
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher" </dev/null >/dev/null 2>&1 &

# Change default shell
echo "__________________________________________________"
echo "Changing default shell to fish"
echo "__________________________________________________"
chsh -s /usr/bin/fish

# Includig polkit rules
echo "__________________________________________________"
echo "Including polkit rules"
echo "__________________________________________________"
POLKIT_DIR="/etc/polkit-1/rules.d"

FILE_PATH="$POLKIT_DIR/90-corectrl.rules"
USER_GROUP=$(id -gn "$USER")

sudo tee "$FILE_PATH" >/dev/null <<EOF
polkit.addRule(function(action, subject) {
    if ((action.id == "org.corectrl.helper.init" ||
         action.id == "org.corectrl.helperkiller.init") &&
        subject.local == true &&
        subject.active == true &&
        subject.isInGroup("$USER_GROUP")) {
            return polkit.Result.YES;
    }
});
EOF
