#!/bin/sh

# start the conky delayed.
conky
conky -c ~/.conkylogs

#start the docky 
docky &

# silently start the synapse
synapse -s &

# start guake
guake -q &

