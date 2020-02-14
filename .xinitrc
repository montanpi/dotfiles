#!/bin/sh

xrdb -merge $HOME/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export AWT_TOOLKIT=MToolkit

exec startxfce4

