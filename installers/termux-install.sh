#!/usr/bin/env bash
#Made by Void Stem
set -e

echo "===================="
echo " RIP INSTALLER "
echo "===================="

echo "[*] Updating packages..."
pkg update -y

echo "[*] Installing dependencies..."
pkg install -y python ffmpeg

echo "[*] Installing yt-dlp with pip..."
pip install -U yt-dlp

echo "[*] Setting up termux storage..."
termux-setup-storage
mkdir -p $PREFIX/bin/
echo "[*] Downloading RIP script from GitHub..."
curl -L -o rip.sh https://raw.githubusercontent.com/VoidStem/rip-tool/refs/heads/main/termux-rip.sh

echo "[*] Installing RIP to $PREFIX/bin/rip..."
chmod +x rip.sh
mv rip.sh $PREFIX/bin/rip

echo "[+] Installation complete!"
echo "To run RIP type: rip"
