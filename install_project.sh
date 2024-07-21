#!/usr/bin/env bash

echo "Copying files from ./home to HOME folder"

SRC_DIR="./home/"
DEST_DIR="$HOME"

echo "Source folder: $SRC_DIR"
echo "Target folder: $DEST_DIR"

cp -r "$SRC_DIR." "$DEST_DIR"

echo "Finished copying files to HOME folder"
