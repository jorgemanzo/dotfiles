#!/bin/bash

printf "Curling the rust install script...............\n"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs  > rust.sh

chmod +x rust.sh

printf "Starting the script........................\n"

runuser -l $SUDO_USER -c "cd $(pwd); ./rust.sh -y"

rm rust.sh

source $HOME/.cargo/env

runuser -l $SUDO_USER -c 'source $HOME/.cargo/env'