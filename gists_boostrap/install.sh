#!/bin/bash
printf "Adding enpass repo...........\n"

echo "deb https://apt.enpass.io/ stable main" > /etc/apt/sources.list.d/enpass.list

wget -O - https://apt.enpass.io/keys/enpass-linux.key | apt-key add -

apt update

apt install enpass

printf "My Common Apps...........\n"

apt install firefox git zsh elementary-sdk git neovim com.github.donadigo.eddy flatpak

printf "Installing vscode and slack via flatpak..........\n"

flatpak install com.visualstudio.code com.slack.Slack

printf "Making you an ssh-key............\n"

ssh-keygen -t ed25519 -b 4096


