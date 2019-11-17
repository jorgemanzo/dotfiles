#!/bin/zsh
smbclient -U manzoj //engrprn.engr.oregonstate.edu/COEprint -c "print $1"
