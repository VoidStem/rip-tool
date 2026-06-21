#!/bin/bash
#Made by Void Stem
set -e

clear
echo "RIP INSTALLER"
echo

echo "Updating packages..."
sudo pacman -Sy

echo "Installing dependencies..."
sudo pacman -S --needed --noconfirm ffmpeg yt-dlp curl

echo "Downloading rip.sh script from GitHub..."
curl -L -o rip.sh https://raw.githubusercontent.com/VoidStem/rip-tool/refs/heads/main/rip.sh

echo "Installing RIP to /usr/local/bin/rip..."
chmod +x rip.sh
sudo mv rip.sh /usr/local/bin/rip

echo "Installation complete!"
echo "Run RIP with: rip"
