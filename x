#!/bin/sh

trap 'amixer -c 1 -q set Master 60%; hsetroot -fill $HOME/lib/img/wall/wallpaper.jpg; 2bwm' USR1

(
    trap '' USR1

    X \
        -ardelay 200 \
        -arinterval 20 \
        +xinerama \
        -dpms \
        -nolisten tcp \
        -quiet \
        :0 vt1
) &

wait
