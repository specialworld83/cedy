#!/bin/bash

## Download and importing Google key needed for Google Hangouts
if [ "$XDG_CURRENT_DESKTOP" = "KDE" ];then
    konsole -e 'trizen -S --noconfirm --with-deps google-talkplugin'
elif [ "$XDG_CURRENT_DESKTOP" = "GNOME" ];then
    gnome-terminal -e 'trizen -S --noconfirm --with-deps google-talkplugin'
elif [ "$XDG_CURRENT_DESKTOP" = "XFCE" ];then
    xfce4-terminal -e 'trizen -S --noconfirm --with-deps google-talkplugin'
elif [ "$XDG_CURRENT_DESKTOP" = "X-Cinnamon" ];then
    gnome-terminal -e 'trizen -S --noconfirm --with-deps google-talkplugin'
elif [ "$XDG_CURRENT_DESKTOP" = "MATE" ];then
    mate-terminal -e 'trizen -S --noconfirm --with-deps google-talkplugin'
fi



