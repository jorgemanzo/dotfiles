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

printf "Linking dotfiles.........\n"

./zsh_git/initdotfiles.sh linux

printf "Installing rust, along with exa and ls.........\n"

./exa_bat/deploy_rust.sh

printf "Applying VSCode extensions and settings.........\n"

./vscode/deploy_settings_with_extensions.sh

printf "Installing Laravel and PHP.........\n"

./laravel/laravelmain.sh