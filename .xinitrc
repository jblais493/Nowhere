@!/bin/sh

xset r rate 200 30
sxhkd &
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &
exec bspwm
