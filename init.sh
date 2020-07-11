#!/bin/bash

printf "Creating .zsh files in ~\n"
cd
ln -s code/dotfiles/.zshrc-linux .zshrc
ln -s code/dotfiles/.zshenv-linux .zshenv
ln -s code/dotfiles/.zshlogin-linux .zshlogin

printf "Telling git who you are....\n"

git config --global user.email "jmanzo203689@gmail.com"
git config --global user.name "jorgemanzo"

printf "Done!\n"
