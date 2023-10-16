#!/usr/bin/bash
sudo reflector --latest 10 -c CN --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist
