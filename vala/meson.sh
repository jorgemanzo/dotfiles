#!/bin/bash
printf "Installing Meson 0.5+..................\n"
apt remove meson
python3 --version
if [ $? != 0 ]; then
    apt install python3
fi
pip3 --version
if [ $? != 0 ]; then
    apt install python3-pip
fi
pip3 install meson
