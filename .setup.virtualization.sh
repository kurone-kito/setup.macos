#!/bin/sh
# vim: set ft=sh :

set -eu

function install_plugin() {
  if [ $(vagrant plugin list | grep "${1}" | wc -l) -eq 0 ]; then
    vagrant plugin install "${1}"
  fi
}

printf '\033[2;36m%s\033[m\n' 'Installing some plugins for Vagrant.'
install_plugin vagrant-parallels
install_plugin vagrant-vbguest
