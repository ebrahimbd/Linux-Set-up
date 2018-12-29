#!/bin/sh

sleep(60)

# start the conky delayed.
conky
conky -c ~/.conkylogs

# start guake
guake 

# silently start the synapse
synapse

#start the docky 
docky



