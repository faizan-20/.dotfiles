!#/bin/sh
export QT_QPA_PLATFORMTHEME=qt5ct
export SSH_AUTH_SOCK
export $(dbus-launch)

xrdb -merge ~/.Xresources &
picom &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#/usr/lib/polkit-kde-authentication-agent-1 &
feh --bg-fill --randomize ~/Pictures/Wallpapers &

dunst &
nm-applet &
blueman-applet &

xidlehook --not-when-audio --not-when-fullscreen --timer 600 "systemctl suspend" "" &

dwmblocks &
while type dwm >/dev/null ; do dwm && continue || break ; done

exec dwm
#exec awesome
#export DESKTOP_SESSION=plasma
#exec startplasma-x11
