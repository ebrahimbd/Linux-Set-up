#!/bin/bash

notify-send "I am running"

w3m https://www1.nseindia.com//homepage/Indices1.json | jshon -e data -e 1 -e lastPrice -u -p -e change -u > /tmp/parsed_output.txt

echo "$(head -1 /tmp/parsed_output.txt) | $(tail -1 /tmp/parsed_output.txt)"
echo "$(head -1 /tmp/parsed_output.txt) | $(tail -1 /tmp/parsed_output.txt)"

if [ $(head -1 /tmp/parsed_output.txt) -ge 0 ]
then
    echo "#00FF00\n"
else
    echo "#FF0000\n"
fi
