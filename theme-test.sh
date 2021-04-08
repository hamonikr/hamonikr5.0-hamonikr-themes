#!/bin/bash

# test after change theme

sudo cp -af usr/share/themes/HamoniKR ~/.local/share/themes/

RUID=$(who | awk 'FNR == 1 {print $1}')
RUSER_UID=$(id -u ${RUID})

if [ X$1 != "Xdark" ] ; then
    # Test HamoniKR-light theme
    sudo -u ${RUID} DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/${RUSER_UID}/bus" gsettings set org.cinnamon.desktop.interface icon-theme 'HamoniKR'
    sudo -u ${RUID} DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/${RUSER_UID}/bus" gsettings set org.cinnamon.desktop.interface gtk-theme 'HamoniKR'
    sudo -u ${RUID} DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/${RUSER_UID}/bus" gsettings set org.cinnamon.desktop.wm.preferences theme 'HamoniKR'
    sudo -u ${RUID} DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/${RUSER_UID}/bus" gsettings set org.cinnamon.theme name 'HamoniKR'
else
    # Test HamoniKR-dark theme
    sudo -u ${RUID} DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/${RUSER_UID}/bus" gsettings set org.cinnamon.desktop.interface icon-theme 'HamoniKR'
    sudo -u ${RUID} DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/${RUSER_UID}/bus" gsettings set org.cinnamon.desktop.interface gtk-theme 'HamoniKR'
    sudo -u ${RUID} DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/${RUSER_UID}/bus" gsettings set org.cinnamon.desktop.wm.preferences theme 'HamoniKR'
    sudo -u ${RUID} DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/${RUSER_UID}/bus" gsettings set org.cinnamon.theme name 'HamoniKR'    
fi 
