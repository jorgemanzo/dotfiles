#!/bin/bash

printf "Creating .zsh files in ~\n"

ln -s $(pwd)/.zshrc-linux ~/.zshrc
ln -s $(pwd)/.zshenv-linux ~/.zshenv
ln -s $(pwd)/.zshlogin-linux ~/.zshlogin
