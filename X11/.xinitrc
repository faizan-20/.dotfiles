#!/bin/sh
exec xrdb ~/.Xresources &
dunst &
feh --bg-fill --randomize ~/Wallpapers/Walls &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

nm-applet &
blueman-applet &
kdeconnect-indicator &
volumeicon &
cbatticon &

xss-lock -n dim-screen.sh -- betterlockscreen -l dim -n &

dwmblocks &
picom --experimental-backends &
export QT_QPA_PLATFORMTHEME=qt5ct
exec dwm
