#!/bin/sh
export DISPLAY=:0
export XAUTHORITY=/home/nani/.Xauthority
xrandr --output LVDS1 --auto --output VGA1 --auto --right-of LVDS1
eval $(cat ~/.fehbg)
