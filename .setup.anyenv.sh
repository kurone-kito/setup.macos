#!/bin/sh
# vim: set ft=sh :

set -eu
cd $(dirname $0)

source .setup.lib.sh

printf '\033[2;36m%s\033[m\n' 'Setup the Anenv, Nodenv.'
source .zsh.d/anyenv
anyenv install nodenv -s
source .zsh.d/anyenv

printf '\033[2;36m%s\033[m\n' 'Installing the NodeJS via updater script.'
mkdir -p "${ZDOTDIR:-$HOME}/bin"
force_link "$(pwd)/bin/update" "${ZDOTDIR:-$HOME}/bin/update"
"${ZDOTDIR:-$HOME}/bin/update"
