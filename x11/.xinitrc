#!/bin/sh
export QT_QPA_PLATFORMTHEME=qt5ct
xrdb ~/.Xresources 

dunst &
feh --bg-fill --randomize ~/Wallpapers/Walls &
/usr/lib/xfce-polkit/xfce-polkit &

nm-applet &
blueman-applet &
#kdeconnect-indicator &
#volumeicon &
#cbatticon &

xidlehook --not-when-audio --not-when-fullscreen --timer 360 "betterlockscreen -l dim" "" &

dwmblocks &
picom --experimental-backends &
exec dwm
