#!/bin/sh

set -eu
cd "$(dirname "$0")"

. .lib.sh
. ../.zsh.d/homebrew

log_info 'Installing the Prezto'
wait_dependencies git zsh

github_clone_if_not_exists sorin-ionescu/prezto "${ZDOTDIR:-$HOME}/.zprezto"
RCFILES=$(find "${ZDOTDIR:-$HOME}"/.zprezto/runcoms -type f -name 'z*')
for rcfile in ${RCFILES}
do
  ln -snf "${rcfile}" "${ZDOTDIR:-$HOME}/.${rcfile##*/}"
done
