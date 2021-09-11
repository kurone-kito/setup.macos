#!/bin/sh

set -eu
cd "$(dirname "$0")"

. .lib.sh
. ../.zsh.d/homebrew

if grep "brew 'asdf'" ../Brewfile | grep '^#' > /dev/null
then
  log_warn 'skipped the ASDF updating because it is not found on this system.'
  exit
fi

log_info 'Installing the ASDF.'
wait_dependencies asdf curl gawk gnupg

. ../.zsh.d/z-asdf

install_plugin() {
  if [ "$(asdf plugin list | grep -c "${1}")" -eq 0 ]
  then
    asdf plugin add "$@"
  fi
}

install_plugin nodejs

log_info 'Installing the NodeJS via updater script.'
wait_dependencies gcc

../bin/update_asdf
