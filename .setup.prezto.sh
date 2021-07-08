#!/bin/sh
# vim: set ft=sh :

set -eu
cd $(dirname $0)

source .setup.lib.sh

log_info 'Setup the Prezto / zsh.d.'

for rcfile in $(find "${ZDOTDIR:-$HOME}"/.zprezto/runcoms -type f -name 'z*'); do
  ln -snf "${rcfile}" "${ZDOTDIR:-$HOME}/.${rcfile##*/}"
done
for rcfile in $(find "$(pwd)" -name '.z*'); do
  ln -snf "${rcfile}" "${ZDOTDIR:-$HOME}/${rcfile##*/}"
done
