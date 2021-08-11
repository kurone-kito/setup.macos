#!/bin/sh
# vim: set ft=sh :

set -eu
cd "$(dirname "$0")"

. .lib.sh
. ../.zsh.d/homebrew

if grep "cask 'vagrant'" ../Brewfile | grep '^#' > /dev/null
then
  log_notice 'Skip the Vagrant setup because not found the Vagrant command.'
  exit
fi

log_info 'Installing some plugins and boxes for Vagrant.'
wait_dependencies vagrant

install_box() {
  if [ "$(vagrant box list | grep -c "${1}")" -eq 0 ]
  then
    vagrant box add "$@"
  fi
}

install_plugin() {
  if [ "$(vagrant plugin list | grep -c "${1}")" -eq 0 ]
  then
    vagrant plugin install "${1}"
  fi
}

install_plugin vagrant-aws
install_plugin vagrant-parallels
install_plugin vagrant-reload
install_plugin vagrant-vbguest
vagrant plugin update

install_box dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box
