#!/bin/bash
#Made By Void Stem

OUTDIR="$HOME/Downloads/RIP"
mkdir -p "$OUTDIR"

clear
echo "RIP TOOL"
echo

echo "Enter a video URL, playlist URL, or search term:"
read -r INPUT

if [ -z "$INPUT" ]; then
echo "No input entered. Exiting."
exit 1
fi

#User download mode
echo "Choose mode:"
echo "1) Audio only"
echo "2) Audio + Video"
read -r MODE

echo

OUTPUT="-o $OUTDIR/%(title)s.%(ext)s"

echo "Starting..."

#Check if it look like a url
if [[ "$INPUT" =~ ^https?:// ]]; then
SOURCE="$INPUT"
echo "URL detected"
else
SOURCE="ytsearch1:$INPUT"
echo "Search detected (YouTube only)"
fi

#Download audio (best quality)
if [ "$MODE" == "1" ]; then
echo "Mode: Audio only"
yt-dlp \
-x --audio-format mp3 \
--audio-quality 0 \
$OUTPUT \
"$SOURCE"
else

#Download video + audio (best quality)
echo "Mode: Audio + Video"
yt-dlp \
-f "bv*+ba/b" \
--merge-output-format mp4 \
$OUTPUT \
"$SOURCE"
fi

echo
echo "Done"
echo "Saved to: $OUTDIR"
