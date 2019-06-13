#!/bin/sh

shutter -f -e -o '/tmp/tmp.png'
convert /tmp/tmp.png -blur 0x3 /tmp/lockpaper.png
i3lock -i /tmp/lockpaper.png

