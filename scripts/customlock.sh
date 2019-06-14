#!/bin/sh

shutter -f -e -o '/tmp/tmp.png'
convert /tmp/tmp.png -blur 0x3 /tmp/lockpaper1.png
composite -gravity center \( ~/Linux-Set-up/wallpaper/icon.png  -resize 90% \)  /tmp/lockpaper1.png  /tmp/lockpaper.png
i3lock -i /tmp/lockpaper.png

