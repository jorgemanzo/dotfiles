#!/bin/bash

printf "\n\n#########################\n"
printf "# Installing php7.4........\n"
printf "#########################\n\n"

add-apt-repository ppa:ondrej/php
apt update
apt -y install php7.4

