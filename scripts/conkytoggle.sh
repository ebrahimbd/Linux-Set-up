#!/bin/bash

pid=$(pidof -x conky)

if [ $pid ]
then
echo "PID is $pid"
    pkill conky
    exit 1
else
    conky
fi
