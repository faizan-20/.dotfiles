#!/bin/bash

get_brightness_icon() {
    brightness="$1"
    if [ "$brightness" -lt 30 ]; then
        echo "low-brightness"
    elif [ "$brightness" -lt 70 ]; then
        echo "high-brightness"
    else
        echo "high-brightness"
    fi
}

function notify_brightness {
    brightness=$(brightnessctl g)
    max_brightness=$(brightnessctl m)
    percent=$((brightness * 100 / max_brightness))
    
    icon=$(get_brightness_icon "$percent")
    
    notify-send "Brightness" \
        --app-name="system" \
        --replace-id=2 \
        --urgency=low \
        --icon="/usr/share/icons/breeze/actions/22/$icon.svg" \
        --hint="int:value:$percent" \
        --hint="string:synchronous:volume-brightness" \
        --hint="string:x-canonical-private-synchronous:brightness" \
        --hint="int:transient:1" \
        " "
}

case $1 in
    up)
        brightnessctl s 5%+
        # notify_brightness
        ;;
    down)
        brightnessctl s 5%-
        # notify_brightness
        ;;
esac
