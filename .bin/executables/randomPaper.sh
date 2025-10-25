#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/wallpees/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Extract just the current wallpaper filename
CURRENT_WALL_BASENAME=$(basename "$CURRENT_WALL")

# Get a random wallpaper that is not the current one, and exclude `.git` directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type d -name .git -prune -o -type f ! -name "$CURRENT_WALL_BASENAME" -print | shuf -n 1)

# Apply the selected wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER"
