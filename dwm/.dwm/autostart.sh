#! /bin/bash
dunst &
feh --bg-fill --randomize ~/Wallpapers/Walls &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

nm-applet &
blueman-applet &
kdeconnect-indicator &
volumeicon &
cbatticon &

xss-lock -n dim-screen.sh -- betterlockscreen -l dim -n &
#xss-lock -n dim-screen.sh -- i3lock-fancy -- maim -n &

dwmblocks &
picom --experimental-backends &
