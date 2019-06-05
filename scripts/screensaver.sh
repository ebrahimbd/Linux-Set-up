#!/bin/bash

for pid in $(pidof -x test.sh); do
    if [ $pid != $$ ]; then
        echo "[$(date)] : abc.sh : Process is already running with PID $pid"
        exit 1
    fi
done

while true
do
    feh --randomize --bg-scale ~/Linux-Set-up/wallpaper/*
    sleep 60
done
