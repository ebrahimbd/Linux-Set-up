#!/bin/sh

export DISPLAY=:0
sleep 5

echo "Executing capslock off"
xmodmap -e 'keycode 66 = NoSymbol Caps_Lock'
