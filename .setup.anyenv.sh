#!/bin/sh
# vim: set ft=sh :

set -eu
cd $(dirname $0)

source .setup.lib.sh

log_info 'Setup the Anenv, Nodenv.'
source .zsh.d/anyenv
anyenv install nodenv -s
source .zsh.d/anyenv

log_info 'Installing the NodeJS via updater script.'
mkdir -p "${HOME}/bin"
ln -snf "$(pwd)/bin/update" "${HOME}/bin/update"
"${HOME}/bin/update"
