#!/bin/sh
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export QT_QPA_PLATFORMTHEME=qt5ct

xrdb ~/.Xresources
picom --experimental-backends &

/usr/lib/xfce-polkit/xfce-polkit &
feh --bg-fill --randomize ~/Wallpapers/Walls &

dunst &
nm-applet &
blueman-applet &
#xfce4-power-manager &
powerkit &
#xscreensaver --no-splash &

xidlehook --not-when-audio --not-when-fullscreen --timer 600 "i3lock-fancy" "" &

dwmblocks &
while type dwm >/dev/null ; do dwm && continue || break ; done

#export XDG_CURRENT_DESKTOP=Budgie:GNOME
#exec budgie-desktop
exec dwm
#exec i3
#exec awesome
