#!/bin/bash

printf "Creating .zsh files in ~\n"

cd
ln -s code/dotfiles/.zshrc-linux .zshrc
ln -s code/dotfiles/.zshenv-linux .zshenv
ln -s code/dotfiles/.zshlogin-linux .zshlogin


