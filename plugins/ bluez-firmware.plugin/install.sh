#!/bin/bash


if [ "$XDG_CURRENT_DESKTOP" = "KDE" ];then
    konsole -e 'trizen -S --noconfirm bluez-firmware'
elif [ "$XDG_CURRENT_DESKTOP" = "GNOME" ];then
    gnome-terminal -e 'trizen -S --noconfirm bluez-firmware'
elif [ "$XDG_CURRENT_DESKTOP" = "XFCE" ];then
    xfce4-terminal -e 'trizen -S --noconfirm bluez-firmware'
elif [ "$XDG_CURRENT_DESKTOP" = "X-Cinnamon" ];then
    gnome-terminal -e 'trizen -S --noconfirm bluez-firmware'
elif [ "$XDG_CURRENT_DESKTOP" = "MATE" ];then
    mate-terminal -e 'trizen -S --noconfirm bluez-firmware'
fi
