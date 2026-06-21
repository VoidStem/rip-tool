# Rip-Tool
Rip-Tool is a free and lightweight Linux/Termux tool that lets users download high-quality videos from websites.

---

## Features
- Download videos from a URL
- Support for playlists
- Search videos using terms
- Choose between MP3 (audio) and MP4 (video)
- Auto merge audio + video into best quality MP4
- Saves files directly to `~/Downloads/RIP`
- Simple command: `rip`
- Fully automatic installer for Termux and Arch-based systems
- Lightweight and fast

---

### Supported Platforms
Arch Linux
Arch-based distributions
Termux on Android
For Termux, it is recommended to install the official package from F-Droid or Play Store:
com.termux

### Other Linux Distributions
While the automated installer is designed for Arch-based systems and Termux, you can install Rip-Tool manually on most Linux distributions.

First, make sure the required dependencies are installed:
- yt-dlp (via package manager or python pip)
- ffmpeg
- bash

Then install Rip-Tool manually:

```bash
curl -L -o rip.sh https://raw.githubusercontent.com/VoidStem/rip-tool/refs/heads/main/rip.sh
chmod +x rip.sh
sudo mv rip.sh /usr/local/bin/rip
```

---

## What the Installer does
- Updates Packages 
- Installs required tools: (Python, ffmpeg & yt-dlp)
- Downloads the Rip-Tool from GitHub
- Installs RIP
---

## Installation
```bash
#For Arch     curl -fsSL https://raw.githubusercontent.com/VoidStem/rip-tool/refs/heads/main/installers/arch-install.sh | bash
#For Termux   curl -fsSL https://raw.githubusercontent.com/VoidStem/rip-tool/refs/heads/main/installers/termux-install.sh | bash

