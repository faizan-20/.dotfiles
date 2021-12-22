!/bin/sh
xset -b &
export QT_QPA_PLATFORMTHEME=qt5ct
export SSH_AUTH_SOCK

xrdb -merge ~/.Xresources &
picom --experimental-backends &

#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/polkit-kde-authentication-agent-1 &
feh --bg-fill --randomize ~/Wallpapers/Walls &

dunst &
nm-applet &
blueman-applet &
powerkit &
#xscreensaver --no-splash &

xidlehook --not-when-audio --not-when-fullscreen --timer 600 "i3lock-fancy" "" &

dwmblocks &
while type dwm >/dev/null ; do dwm && continue || break ; done

exec dwm
#exec awesome
#export DESKTOP_SESSION=plasma
#exec startplasma-x11
