#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. lib.sh
. ../.zsh.d/homebrew

log_info 'Installing the Prezto'
wait_dependencies git zsh

github_clone_if_not_exists sorin-ionescu/prezto "${ZDOTDIR:-$HOME}/.zprezto"
FILES=$(find "${ZDOTDIR:-$HOME}"/.zprezto/runcoms -type f -name 'z*')
for file in ${FILES}
do
  ln -snf "${file}" "${ZDOTDIR:-$HOME}/.${file##*/}"
done
