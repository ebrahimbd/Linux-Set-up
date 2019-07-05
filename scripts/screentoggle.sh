#!/bin/bash

pid=$(pidof -x screensaver.sh)

if [ $pid ]
then
    notify-send "PID is $pid"
    pkill screensaver.sh
    exit 1
else
    notify-send "Starting the Screen Saver Services"
    ~/Linux-Set-up/scripts/screensaver.sh &
fi
