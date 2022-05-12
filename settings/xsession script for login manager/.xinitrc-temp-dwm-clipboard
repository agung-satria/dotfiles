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

# exec enlightenment_start
# exec i3
# exec mate-session
# exec xmonad
# exec startlxqt
# exec startlxde
# exec awesome
# exec bspwm
# exec gnome-session
# exec gnome-session --session=gnome-classic
# exec startplasma-x11
# exec startplasma-wayland
# exec startxfce4
# exec startfluxbox
# exec openbox-session
# exec cinnamon-session
# exec pekwm
# exec catwm

#nm-applet &
#xset r rate 300 50 &
#slstatus &

#~/.dwm/autostart &
exec dwm
#exec /usr/bin/gnome-shell
# exec startede
# exec icewm-session
# exec jwm
# exec monsterwm
# exec notion
# exec startdde       # deepin-session
