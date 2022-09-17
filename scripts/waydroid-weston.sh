#!/bin/sh
weston --xwayland &
sleep 3
export XDG_SESSION_TYPE='wayland'
export DISPLAY=':1'
kitty -e waydroid show-full-ui
