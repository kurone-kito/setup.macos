#!/bin/sh
# vim: set ft=sh :

set -eu
cd $(dirname $0)

source .setup.lib.sh

printf '\033[2;36m%s\033[m\n' 'Setup the Prezto / zsh.d.'
for rcfile in $(find "${ZDOTDIR:-$HOME}"/.zprezto/runcoms -type f -name 'z*'); do
  force_link "${rcfile}" "${ZDOTDIR:-$HOME}/.${rcfile##*/}"
done
for rcfile in $(find "$(pwd)" -name '.z*'); do
  force_link "${rcfile}" "${ZDOTDIR:-$HOME}/${rcfile##*/}"
done
