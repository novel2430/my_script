#!/usr/bin/bash
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=river
systemctl --user stop pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-wlr
systemctl --user restart pipewire
systemctl --user restart wireplumber
systemctl --user restart xdg-desktop-portal
systemctl --user restart xdg-desktop-portal-wlr
