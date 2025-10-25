#!/bin/bash

# Check if Waybar is running
if pgrep -x "waybar" > /dev/null; then
    # If Waybar is running, kill it
    pkill waybar
else
    # If Waybar is not running, start it in the background
    waybar &
fi
