#!/bin/sh

trap 'picom -b --config $HOME/etc/picom.conf; hsetroot -cover $HOME/usr/img/wall/namroud-gorguis-FZWivbri0Xk-unsplash.jpg; 2bwm' USR1

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
