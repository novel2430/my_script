#!/usr/bin/bash

sending ()
{
  volume=$(pamixer --get-volume)
  volume_scale=$(( $volume * 100 / 150 ))
  dunstify -a "ChangeVolume" -r 9993 -h int:value:"$volume_scale" -i "Vol $1" "Level : ${volume_scale}%" -t 2000
}

case $1 in
  up)
    wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+ && sending $1
    ;;
  down)
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && sending $1
    ;;
  mute)
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
    if $(pamixer --get-mute); then
      dunstify -a "ChangeVolume" -i "Muted" "MUTE" -t 2000 -r 9993
    else
      sending up
    fi
    ;;
esac
