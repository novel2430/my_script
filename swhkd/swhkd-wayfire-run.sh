#!/usr/bin/env bash
killall swhks; 
/usr/bin/swhks & 
pkexec swhkd -c /home/novel2430/.config/swhkd/swhkdrc-wayfire
