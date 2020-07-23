#!/bin/bash
printf "Installing vala language server and PPAs.......\n"
apt-add-repository ppa:vala-team/next
apt-get remove valac-0.40-vapi "libvala.*-0.40-0"
apt-get install valac-0.48 valac-bin
add-apt-repository ppa:prince781/vala-language-server
apt-get update
apt-get install vala-language-server
