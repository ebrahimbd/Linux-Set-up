#!/bin/sh

#start the docky 
docky

# silently start the synapse
synapse -s

# start guake
guake -q

# start the conky delayed.
conky -c .conkyrc
conky -c .conkylogs
