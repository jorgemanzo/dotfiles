#!/bin/bash

printf "Adding enpass repo...........\n"

echo "deb https://apt.enpass.io/ stable main" > /etc/apt/sources.list.d/enpass.list

wget -O - https://apt.enpass.io/keys/enpass-linux.key | apt-key add -

apt update

apt install -y enpass

printf "My Common Apps...........\n"

apt install -y firefox git zsh git neovim com.github.donadigo.eddy flatpak docker docker-compose snapd

printf "Creating docker group and adding you to it........\n"

groupadd docker

usermod -aG docker $USER

printf "Installing vscode and slack via flatpak..........\n"

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub com.visualstudio.code

flatpak install -y flathub com.slack.Slack

printf "Installing heroku CLI via snap.......\n"

snap install --classic heroku

printf "Making you an ssh-key............\n"

ssh-keygen -t ed25519 -b 4096

printf "Cloning dotfiles repo.............\n"

git clone https://github.com/jorgemanzo/dotfiles.git

cd dotfiles/

printf "Linking dotfiles.........\n"

./zsh_git/initdotfiles.sh linux

printf "Installing rust, along with exa and ls.........\n"

./exa_bat/deploy_rust.sh

printf "Applying VSCode extensions and settings.........\n"

./vscode/deploy_settings_with_extensions.sh

printf "Installing Laravel and PHP.........\n"

./laravel/laravelmain.sh