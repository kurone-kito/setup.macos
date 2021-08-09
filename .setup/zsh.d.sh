#!/bin/sh
# vim: set ft=sh :

set -eu
cd "$(dirname "$0")"

. .lib.sh
. ../.zsh.d/homebrew

log_info 'Installing the .zsh.d'
wait_dependencies zsh

cd ..
ln -snf "$(pwd)/.zsh.d" "${ZDOTDIR:-$HOME}/.zsh.d"
