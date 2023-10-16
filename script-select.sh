#!/usr/bin/bash

op=$(echo -e "update system\nupdate mirrors\nedit config\nedit files\nupdate clash" | wofi -dmenu)
open_term="alacritty"
term_flag="-e"
case $op in
  'update system')
    $open_term $term_flag /home/novel2430/my_script/update-system.sh
    ;;
  'update mirrors')
    $open_term $term_flag /home/novel2430/my_script/update-mirror.sh
    ;;
  'edit config')
    $open_term -T FZF $term_flag /home/novel2430/my_script/nvim-fzf-config.sh
    ;;
  'edit files')
    $open_term -T FZF $term_flag /home/novel2430/my_script/nvim-fzf.sh
    ;;
  'update clash')
    $open_term $term_flag /home/novel2430/my_script/update-clash.sh
    ;;
esac
