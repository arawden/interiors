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

xsetroot -cursor_name left_ptr &
xset s off # disable screen blanking
xset -dpms # turn off display power management
clipit &
sxhkd -c ~/.config/sxhkd/bspwm &
mpd &
pulseaudio &
xrdb -load ~/.Xresources &

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
exec bspwm
