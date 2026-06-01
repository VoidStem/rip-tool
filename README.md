# Rip-Tool
Rip-Tool is a free and lightweight Termux tool that lets users download high-quality videos from websites.

---
## Requirements
Install Termux from Play Store or F-Droid (com.termux)  
A stable internet connection  
If installation fails, try switching to a different repository using `termux-change-repo`  
Check if curl is installed with `curl --version`. If not, use `pkg install curl`  
---
- Download videos from supported websites (YouTube, etc.)
- Auto merge audio + video into best quality MP4
- Saves files directly to Downloads/RIP
- Simple command: `rip`
- Fully automatic installer for Termux
- Lightweight and fast
---
## What the install.sh does
- Updates Termux
- Installs required tools: Python & ffmpeg
- Installs yt-dlp with pip
- Sets up Termux storage
- Downloads the Rip-Tool from GitHub
- Installs rip
---
## Installation
```bash
curl -fsSL https://raw.githubusercontent.com/VoidStem/rip-tool/main/install.sh | bash
