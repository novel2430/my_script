#!/usr/bin/zsh
        # --image /home/novel2430/Downloads/Beautiful-Anime-Girl-Wallpaper.jpg \

indicator_radius=60
indicator_thickness=7
x_pos=$(( $indicator_radius + $indicator_thickness + 10 ))
y_pos=$(( $indicator_radius + $indicator_thickness + 10 ))
y_pos=$(( 1080 - $y_pos ))

#killall swaylock
case $1 in
  manual)
    swaylock \
            --ignore-empty-password \
            --screenshots \
            --clock \
            --indicator \
            --indicator-radius $indicator_radius \
            --indicator-thickness $indicator_thickness \
            --indicator-x-position $x_pos \
            --indicator-y-position $y_pos \
            --effect-blur 7x5 \
            --effect-vignette 0.5:0.5 \
            --ring-color 9f965d \
            --ring-ver-color 9f965d \
            --ring-clear-color 9f965d \
            --ring-wrong-color 880033 \
            --key-hl-color 880033 \
            --line-color 00000000 \
            --inside-color 00000088 \
            --inside-ver-color 00000088 \
            --inside-clear-color 00000088 \
            --inside-wrong-color 880033 \
            --text-color ffffff \
            --text-ver-color ffffff \
            --text-clear-color ffffff \
            --text-wrong-color ffffff \
            --separator-color 00000000
    ;;
  idle)
    swaylock \
            --ignore-empty-password \
            --image /home/novel2430/Downloads/desktop-1920x1080.jpg \
            --clock \
            --indicator \
            --indicator-radius $indicator_radius \
            --indicator-thickness $indicator_thickness \
            --indicator-x-position $x_pos \
            --indicator-y-position $y_pos \
            --effect-blur 7x5 \
            --effect-vignette 0.5:0.5 \
            --ring-color 9f965d \
            --ring-ver-color 9f965d \
            --ring-clear-color 9f965d \
            --ring-wrong-color 880033 \
            --key-hl-color 880033 \
            --line-color 00000000 \
            --inside-color 00000088 \
            --inside-ver-color 00000088 \
            --inside-clear-color 00000088 \
            --inside-wrong-color 880033 \
            --text-color ffffff \
            --text-ver-color ffffff \
            --text-clear-color ffffff \
            --text-wrong-color ffffff \
            --separator-color 00000000
    ;;
esac
