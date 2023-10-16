#!/usr/bin/bash
killall waybar
waybar -c ~/.config/waybar/config-wayfire &
waybar -c ~/.config/waybar/config-wayfire-bottom -s ~/.config/waybar/config-wayfire-bottom.css &
