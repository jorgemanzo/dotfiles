#!/bin/bash

printf "\n\n#########################\n"
printf "# Installing laravel via composer...........\n"
printf "#########################\n\n"

# This can be ran as non-root.
# Make sure to check that ~/.composer is not owned by root.
runuser -l $SUDO_USER -c 'composer global require laravel/installer'
