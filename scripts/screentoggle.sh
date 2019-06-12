#!/bin/bash

pid=$(pidof -x screensaver.sh)

if [ $pid ]
then
    echo "PID is $pid"
    pkill screensaver.sh
    exit 1
else
    ./~/Linux-Set-up/script/screensaver.sh &
fi
