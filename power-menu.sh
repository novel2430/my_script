#!/usr/bin/bash

op=$(echo -e "reboot\nshutdown\nlock" | wofi -dmenu)

case $op in
  reboot)
    reboot
    ;;
  shutdown)
    shutdown now
    ;;
  lock)
    /home/novel2430/my_script/swaylock.sh manual
    ;;
esac
