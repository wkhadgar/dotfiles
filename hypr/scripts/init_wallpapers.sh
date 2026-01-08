#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers"

WALLPAPER_A="$WALLPAPER_DIR/side-a.jpg"
WALLPAPER_B="$WALLPAPER_DIR/side-b.jpg"

# Initialize hyprpaper
hyprpaper &
sleep 2

# Apply the selected wallpaper
hyprctl hyprpaper wallpaper DP-1, "$WALLPAPER_A"
hyprctl hyprpaper wallpaper HDMI-A-1, "$WALLPAPER_B"
