#!/bin/sh
# vim: set ft=sh :

set -eu
cd $(dirname $0)

. .setup.lib.sh

log_info 'Installing some plugins for Vagrant.'

function install_plugin() {
  if [ $(vagrant plugin list | grep "${1}" | wc -l) -eq 0 ]; then
    vagrant plugin install "${1}"
  fi
}

install_plugin vagrant-parallels
install_plugin vagrant-vbguest
