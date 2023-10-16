#!/usr/bin/bash
path="/home/novel2430/Pic/screenshot/"
now_date=$(date '+%Y%m%d-%H%M%S')
file_name="${path}${now_date}.png"
msg="save as ${file_name}"

case $1 in
  full)
    scrot -z ${file_name} && dunstify -a "Screenshot" "Full" "${msg}" -r 2003
    ;;
  select)
    scrot -z -s -f ${file_name} && dunstify -a "Screenshot" "Select" "${msg}" -r 2003
    ;;
esac
