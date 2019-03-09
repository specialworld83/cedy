#!/bin/bash

if [ "$XDG_CURRENT_DESKTOP" = "KDE" ];then
    konsole -e 'trizen -S --noconfirm wps-office-stable wps-office-extension-english-uk-dictionary wps-office-mui-en-gb'
elif [ "$XDG_CURRENT_DESKTOP" = "GNOME" ];then
    gnome-terminal -e 'trizen -S --noconfirm wps-office-stable wps-office-extension-english-uk-dictionary wps-office-mui-en-gb'
elif [ "$XDG_CURRENT_DESKTOP" = "XFCE" ];then
    xfce4-terminal -e 'trizen -S --noconfirm wps-office-stable wps-office-extension-english-uk-dictionary wps-office-mui-en-gb'
elif [ "$XDG_CURRENT_DESKTOP" = "X-Cinnamon" ];then
    gnome-terminal -e 'trizen -S --noconfirm wps-office-stable wps-office-extension-english-uk-dictionary wps-office-mui-en-gb'
elif [ "$XDG_CURRENT_DESKTOP" = "MATE" ];then
    mate-terminal -e 'trizen -S --noconfirm wps-office-stable wps-office-extension-english-uk-dictionary wps-office-mui-en-gb'
fi
