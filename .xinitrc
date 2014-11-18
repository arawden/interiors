#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrandr --output LVDS1 --auto --primary --output VGA1 --auto --right-of LVDS1 & 
xsetroot -cursor_name left_ptr &
#feh --bg-fill --no-xinerama ~/downloads/images/arch_bg.png &
clipit &
sxhkd -c ~/.config/sxhkd/bspwm &
mpd &
pulseaudio &
xrdb ~/.Xresources-bspwm &

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
exec bspwm
