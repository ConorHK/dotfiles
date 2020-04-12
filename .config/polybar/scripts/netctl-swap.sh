#!/bin/bash

choice=`find /etc/netctl -maxdepth 1 -type f -printf "%f\n" | rofi -dmenu -p "Wifi profile"`;
if [ -n "$choice" ];
then
  pkexec netctl switch-to $choice;
fi
