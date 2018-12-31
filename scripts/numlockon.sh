#!/bin/sh

export DISPLAY=:0
sleep 60

echo "Executing numlockx"
numlockx on
xmodmap -e 'keycode 77 = NoSymbol Num_Lock'
