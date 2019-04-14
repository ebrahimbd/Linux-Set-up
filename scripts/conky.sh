#!/bin/sh

export DISPLAY=:0
sleep 60

# start the conky delayed.
conky
conky -c ~/.conkylogs
