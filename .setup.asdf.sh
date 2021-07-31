#!/bin/sh
# vim: set ft=sh :

set -eu
cd "$(dirname "$0")"

. .setup.lib.sh

if ! type -a asdf > /dev/null 2>&1
then
  log_notice 'Skipped the ASDF updating because it is not found on this system.'
  exit
fi

log_info 'Setup the asdf-nodejs.'
. .zsh.d/z-asdf

install_plugin() {
  if [[ "$(asdf plugin list | grep -c "${1}")" -eq 0 ]]
  then
    asdf plugin add "$@"
  fi
}

install_plugin nodejs

log_info 'Installing the NodeJS via updater script.'
mkdir -p "${HOME}/bin"
for f in "$(pwd)/bin/"*
do
  ln -snf "${f}" "${HOME}/bin/$(basename "${f}")"
done

"${HOME}/bin/update_asdf"
