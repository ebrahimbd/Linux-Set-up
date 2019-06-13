#!/bin/bash

files=(~/Linux-Set-up/wallpaper/*)
transition_image=~/Linux-Set-up/.useless/transition.jpg
counter=0
wallpaper="${files[RANDOM % ${#files[@]}]}"

for pid in $(pidof -x test.sh); do
    if [ $pid != $$ ]; then
        #echo "[$(date)] : abc.sh : Process is already running with PID $pid"
        exit 1
    fi
done

while true
do
    #echo $wallpaper
    feh --bg-scale $wallpaper
    sleep 60
    while true
    do
        counter=$(( $counter+4 ))
        #echo $counter
        convert $wallpaper -fill black -colorize $counter% $transition_image
        feh --bg-scale $transition_image
        sleep 0.002
        if [ $counter -ge 90 ]
        then
            break
        fi
    done
    wallpaper="${files[RANDOM % ${#files[@]}]}"
    while true
    do
        counter=$(( $counter-4 ))
        #echo $counter
        convert $wallpaper -fill black -colorize $counter% $transition_image
        feh --bg-scale $transition_image
        sleep 0.002
        if [ $counter -le 10 ]
        then
            break
        fi
    done
done
