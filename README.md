# FS3D Player (Linux)

A simple Linux tool that plays FS3D (frame-sequential 3D) videos as SBS (side-by-side) in real time using FFmpeg.

## Features
- FS3D → SBS live conversion
- Fullscreen playback
- No subtitles
- File picker GUI
- Lightweight (uses ffplay)

## Requirements
- ffmpeg
- zenity

Install:
```bash
sudo apt install ffmpeg zenity

Create Main Script:
nano fs3d-player.sh

Make it Executable:
chmod +x fs3d-player.sh
