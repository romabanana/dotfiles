#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers"
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the wallpaper
hyprctl hyprpaper reload HDMI-A-1,"$WALLPAPER"
