#!/bin/bash

printf "\n\n#########################\n"
printf "# Installing some php deps...........\n"
printf "#########################\n\n"

apt install -y php7.4-{zip,mbstring,dom,mysql}


