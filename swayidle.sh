#!/usr/bin/bash
swayidle -w \
  timeout 1800 'hyprctl dispatch dpms off' \
    resume 'hyprctl dispatch dpms on' \
  timeout 3600 '/home/novel2430/my_script/swaylock.sh idle &' \
    resume 'hyprctl dispatch dpms on'
