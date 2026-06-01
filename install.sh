#!/usr/bin/env bash

echo "===================="
echo " RIP INSTALLER "
echo "===================="

echo "[*] Updating packages..."
pkg update -y && pkg upgrade -y

echo "[*] Installing dependencies..."
pkg install -y python ffmpeg

echo "[*] Installing yt-dlp with pip..."
pip install -U yt-dlp

echo "[*] Setting up termux storage..."
termux-setup-storage
mkdir -p $PREFIX/bin/
echo "[*] Downloading RIP script from GitHub..."
curl -L -o rip.sh https://raw.githubusercontent.com/VoidStem/rip-tool/main/rip.sh

echo "[*] Moving rip.sh to $PREFIX/bin/rip..."
chmod +x rip.sh
mv rip.sh $PREFIX/bin/rip

echo "[+] Installation complete!"
echo "To run rip type: rip"
