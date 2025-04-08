#!/usr/bin/env bash

echo "__________________________________________________"
echo "Installing and enabling zram"
echo "__________________________________________________"

# 0) Pre-requisite: ZSWAP must be disabled
zswap_enabled_path="/sys/module/zswap/parameters/enabled"
expected_content="N"
if [ -f "$zswap_enabled_path" ]; then
  file_content=$(cat "$zswap_enabled_path")
  if [ "$file_content" = "$expected_content" ]; then
    echo "ZSWAP is disabled, continuing ZRAM installation"
  else
    echo "ZSWAP is enabled, disabling it"
    echo 0 > /sys/module/zswap/parameters/enabled
  fi
fi

# 1) Move configuration file to systemd directory
source_dir="$(dirname "$0")"
target_dir="/etc/systemd"

file="zram-generator.conf"

cp "$source_dir/$file" "$target_dir"

# 2) Start zram
systemctl daemon-reload
systemctl start /dev/zram0
