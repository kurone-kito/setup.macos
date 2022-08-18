#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. .lib.sh
. ../.zsh.d/homebrew

log_info 'Installing the .zsh.d'
wait_dependencies zsh

cd ..
ln -snf "$(pwd)/.zsh.d" "${ZDOTDIR:-$HOME}/.zsh.d"
