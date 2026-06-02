# Rip-Tool
Rip-Tool is a free and lightweight Linux/Termux tool that lets users download high-quality videos from websites.

---
## Requirments
### Supported Platforms
Arch Linux
Arch-based distributions
Termux on Android
For Termux, it is recommended to install the official package from F-Droid or Play Store:
com.termux
### Other Linux Distributions
While the automated installer is designed for Arch-based systems and Termux, the rip.sh script can be used on most Linux distributions if:

Bash is installed
Python is installed
FFmpeg is installed
yt-dlp is installed
The script has execute permissions (chmod +x rip.sh)

---
- Download videos from supported websites (YouTube, etc.)
- Auto merge audio + video into best quality MP4
- Saves files directly to Downloads/RIP
- Simple command: `rip`
- Fully automatic installer for Termux
- Lightweight and fast
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

