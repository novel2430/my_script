#!/usr/bin/bash
dpms_off_cmd="wlopm --off HDMI-A-1"
dpms_on_cmd="wlopm --on HDMI-A-1"
lock_cmd="/home/novel2430/my_script/swaylock.sh idle &"
swayidle -w \
  timeout 1800 "${dpms_off_cmd}" \
    resume "${dpms_on_cmd}" \
  timeout 3600 "${lock_cmd}" \
    resume "${dpms_on_cmd}"
