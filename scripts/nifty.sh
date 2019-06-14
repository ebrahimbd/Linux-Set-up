#!/bin/bash

notify-send "I am running"

w3m https://www1.nseindia.com//homepage/Indices1.json | jshon -e data -e 1 -e lastPrice -u -p -e change -u > /tmp/parsed_output.txt

echo "$(head -1 /tmp/parsed_output.txt)" > /tmp/nifty1.txt
echo "$(tail -1 /tmp/parsed_output.txt)" > /tmp/nifty2.txt
