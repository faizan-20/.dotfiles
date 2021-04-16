#!/bin/sh
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

export QT_QPA_PLATFORMTHEME=qt5ct
xrdb ~/.Xresources 
wal -R

dunst &
#feh --bg-fill --randomize ~/Wallpapers/Walls &
/usr/lib/xfce-polkit/xfce-polkit &
#wal -i "$HOME/Wallpapers/Walls" -n
feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"&

nm-applet &
blueman-applet &
#kdeconnect-indicator &
#volumeicon &
#cbatticon &

xidlehook --not-when-audio --not-when-fullscreen --timer 600 "i3lock-fancy" "" &
#/usr/bin/xautolock -time 5 -locker /usr/bin/i3lock-fancy -detectsleep &

dwmblocks &
picom --experimental-backends &
while type dwm >/dev/null ; do dwm && continue || break ; done
exec dwm
