#!/usr/bin/env bash
cd /home/debugger/.dwm
sudo make clean install
cd /home/debugger/.st
sudo make clean install

cd

export DISPLAY=:99

feh --bg-fill /home/debugger/.dwm/wallpaper01.png >> /dev/null 2>&1 &

(
while true; do
	[[ $(pgrep -x 'picom') ]] || picom --experimental-backends --config /home/debugger/.config/picom/picom.conf >> /dev/null 2>&1
	sleep 3;
done &
)

gdbserver :2345 dwm
