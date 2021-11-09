!/bin/sh
xset -b &
export QT_QPA_PLATFORMTHEME=qt5ct
export SSH_AUTH_SOCK

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources &
picom --experimental-backends &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
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

exec dwm
#exec startxfce4
