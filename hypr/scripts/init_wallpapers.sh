#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers"

WALLPAPER_A="$WALLPAPER_DIR/326951.jpg"
WALLPAPER_B="$WALLPAPER_DIR/713774.jpg"

# Initialize hyprpaper
hyprpaper &
sleep 2

# Apply the selected wallpaper
hyprctl hyprpaper reload HDMI-A-1,contain:"$WALLPAPER_A"
hyprctl hyprpaper reload DP-1,contain:"$WALLPAPER_B"
