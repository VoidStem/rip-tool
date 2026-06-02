#!/usr/bin/env bash
#Made By Void Stem
set -e

# Download/RIP
OUTDIR="$HOME/Downloads/RIP"
mkdir -p "$OUTDIR"

clear

echo "===================="
echo " RIP TOOL "
echo "===================="
echo

read -rp "Enter video URL: " URL

if [ -z "$URL" ]; then
echo "No URL entered, exiting!"
exit 1
fi

echo
echo "Downloading and merging audio + video..."

yt-dlp 
-f "bv*+ba/b" 
--merge-output-format mp4 
--remux-video mp4 
--no-playlist 
-o "$OUTDIR/%(title)s.%(ext)s" 
"$URL"

echo
echo "[+] Done!"
echo "Saved to: $OUTDIR"
