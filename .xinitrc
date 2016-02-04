#!/bin/sh

[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

xset m 3
xset b 15 200 150
xset s off
xset dpms 3600 3600 3600

xset fp+ $HOME/.fonts/misc
xset fp+ $HOME/.fonts/ohsnap
xset fp+ $HOME/.fonts/terminesspowerline
xset fp+ $HOME/.fonts/tewi

xinput set-button-map 10 1 2 3 4 5 2 7 8 9

mpd

exec i3 -V >> ~/.i3/logs/i3log-$(date +'%F-%k-%M-%S') 2>&1
