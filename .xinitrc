#!/bin/sh

HOMESRC=$HOME/.local/src 
xset +fp $HOME/.local/share/fonts & 
xset fp rehash &

exec setxkbmap br &  # set keyboard mapping
exec hsetroot -center $HOME/wallpaper/bik.png &  # set wallpaper
exec xss-lock -- slock &  # launch slock when lid is closed
exec dunst &
#exec mpdas & # turn on mpdas
exec slstatus & 
exec $HOMESRC/dwm/weather &  
exec $HOMESRC/dwm/dwm/dwm 

