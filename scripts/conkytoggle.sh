#!/bin/bash

pid=$(pidof -x conky)

echo "PID is $pid"

if [ $pid ]
then
    pkill conky
    exit 1
else
    conky
fi
