#!/bin/bash

files=(~/Linux-Set-up/wallpaper/*)
transition_image=/tmp/transition.jpg
counter=0
wallpaper="${files[RANDOM % ${#files[@]}]}"
transition_rate=11
transition_time=0.0005
delay_time=3600

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
    sleep $delay_time
    while true
    do
        counter=$(( $counter+$transition_rate ))
        #echo $counter
        convert $wallpaper -fill black -colorize $counter% $transition_image
        feh --bg-scale $transition_image
        sleep $transition_time
        if [ $counter -ge 98 ]
        then
            break
        fi
    done
    wallpaper="${files[RANDOM % ${#files[@]}]}"
    while true
    do
        counter=$(( $counter-$transition_rate ))
        #echo $counter
        convert $wallpaper -fill black -colorize $counter% $transition_image
        feh --bg-scale $transition_image
        sleep $transition_time
        if [ $counter -le 2 ]
        then
            break
        fi
    done
done
