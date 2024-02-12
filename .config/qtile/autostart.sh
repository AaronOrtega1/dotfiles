#!/bin/sh
xrandr --output Virtual-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
nitrogen --restore &
picom --daemon &
sleep 1