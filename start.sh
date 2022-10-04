#!/bin/bash

read -p "Connect USB Mic and press <ENTER> to continue"
/usr/bin/xset -dpms
/usr/bin/xset s 0 0
/usr/bin/xset s noblank
/usr/bin/xrandr --output HDMI1 --mode 1024x768 --pos 0x0
/usr/bin/xrandr --output eDP1 --mode 1366x768 --pos 0x768
cd /home/aqua/teleprompter
/usr/bin/python3 -m http.server &
sleep 10
/usr/bin/pd websocketComm.pd &
/usr/bin/unclutter -idle 1 &
sleep 5
/usr/bin/chromium-browser --start-fullscreen --window-position=0,0 -kiosk --incognito --noerrdialogs --disable-translate --no-first-run --fast --fast-start --disable-infobars --disable-features=TranslateUI --password-store=basic --window-size=640,480 http://localhost:8000 &
sleep 5
/usr/bin/devilspie &











