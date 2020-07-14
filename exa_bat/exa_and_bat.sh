#!/bin/bash

printf "Installing a dependency for cargo and bat, libclang-dev...........\n"

apt install -y libclang-dev

runuser -l $SUDO_USER -c 'cargo install exa bat'
