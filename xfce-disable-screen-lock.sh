#!/bin/bash

# Disable XFCE session lock
xfconf-query -c xfce4-session -p /shutdown/LockScreen -s false

# Set screen blanking to 0 (AC and battery)
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-ac --create -t int -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-battery --create -t int -s 0

# Disable DPMS (power saving)
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-enabled --create -t bool -s false

# Disable X11-level screen blanking
xset s off
xset -dpms
xset s noblank


## Add this to XFCE AutoStart
# chmod +x ~/xfce-disable-screen-lock.sh
# mkdir -p ~/.config/autostart
# nano ~/.config/autostart/xfce-disable-screen-lock.desktop

### ADD BELOW to .desktop file
# [Desktop Entry]
# Type=Application
# Exec=/home/$USER/disable-screen-lock.sh
# Hidden=false
# NoDisplay=false
# X-GNOME-Autostart-enabled=true
# Name=Disable Screen Lock
# Comment=Disable screen lock and blanking on startup

