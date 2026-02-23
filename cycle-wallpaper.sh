#!/bin/bash

WALLPAPER_DIR="$HOME/.config/sway/wallpaper"
STATE_FILE="$HOME/.config/sway/.wallpaper_index"

# Get list of images
mapfile -t FILES < <(ls "$WALLPAPER_DIR"/*.{png,jpg,jpeg} 2>/dev/null | sort)

# If no state file, start at 0
if [ ! -f "$STATE_FILE" ]; then
  echo 0 >"$STATE_FILE"
fi

INDEX=$(cat "$STATE_FILE")
NEXT_INDEX=$(((INDEX + 1) % ${#FILES[@]}))

# Set wallpaper
swaymsg output '*' background "${FILES[$NEXT_INDEX]}" fill

# Save new index
echo "$NEXT_INDEX" >"$STATE_FILE"
