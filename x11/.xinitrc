#!/bin/sh
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export QT_QPA_PLATFORMTHEME=qt5ct

xrdb ~/.Xresources 
picom --experimental-backends &

/usr/lib/xfce-polkit/xfce-polkit &
#feh --bg-fill --randomize ~/Wallpapers/Walls
feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"&
wal -R

dunst &
nm-applet &
blueman-applet &
cbatticon &
#kdeconnect-indicator &
#volumeicon &

xidlehook --not-when-audio --not-when-fullscreen --timer 600 "i3lock-fancy" "" &

dwmblocks &
while type dwm >/dev/null ; do dwm && continue || break ; done

exec dwm
#exec awesome
#exec i3
