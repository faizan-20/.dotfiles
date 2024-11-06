#!/bin/bash

get_volume_icon() {
    volume="$1"
    if [ "$volume" -eq 0 ]; then
        echo "audio-volume-muted"
    elif [ "$volume" -lt 30 ]; then
        echo "audio-volume-low"
    elif [ "$volume" -lt 70 ]; then
        echo "audio-volume-medium"
    else
        echo "audio-volume-high"
    fi
}

function notify_volume {
    volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')
    icon=$(get_volume_icon "$volume")
    
    notify-send "Volume" \
        --app-name="system" \
        --replace-id=1 \
        --urgency=low \
        --icon="/usr/share/icons/breeze/status/24/$icon.svg" \
        --hint="int:value:$volume" \
        --hint="string:synchronous:volume-brightness" \
        --hint="string:x-canonical-private-synchronous:volume" \
        --hint="int:transient:1" \
        " "
}

function notify_mute {
    if wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q MUTED; then
        notify-send "Volume" \
            --app-name="system" \
            --replace-id=1 \
            --urgency=low \
            --icon="/usr/share/icons/breeze/status/24/audio-volume-muted.svg" \
            --hint="string:synchronous:volume-brightness" \
            --hint="string:x-canonical-private-synchronous:volume" \
            --hint="int:value:0" \
            --hint="int:transient:1" \
            "Muted"
    else
        notify_volume
    fi
}

case $1 in
    up)
        wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+
        notify_volume
        ;;
    down)
        wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-
        notify_volume
        ;;
    mute)
        wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
        notify_mute
        ;;
esac
