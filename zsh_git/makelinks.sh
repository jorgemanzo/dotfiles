#!/bin/bash

printf "Creating .zsh files in ~\n"

OS=$1

# Im not too happy with this yet.
# Id like to be able to have this grep only the files that are for
# the given OS.

find ./  -printf "%f\n" | grep .zsh > out

while read zshfile; do
    ln -s $(pwd)/$zshfile ~/${zshfile%-$OS}
done < out

rm out
