#!/usr/bin/env bash


# 0) Pre-requisite: ZSWAP must be disabled
zswap_enabled_path="/sys/module/zswap/parameters/enabled"
expected_content="N"
if [ -f "$zswap_enabled_path" ]; then
  file_content=$(cat "$zswap_enabled_path")
  if [ "$file_content" = "$expected_content" ]; then
    echo "ZSWAP is disabled, continuing ZRAM installation"
  else
    echo "ZSWAP is enabled, disable it to continue ZRAM installation"
  fi
fi

# 1) Install zram-generator
yes | yay -S zram-generator

# 2) Move configuration file to systemd directory
source_dir="$(dirname "$0")"
target_dir="/etc/systemd"

file="zram-generator.conf"

sudo cp "$source_dir/$file" "$target_dir"

# 3) Start zram
sudo systemctl start /dev/zram0

echo "Installation script finished, please reboot"
