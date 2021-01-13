#!/bin/sh
# vim: set ft=sh :

set -eu
cd $(dirname $0)

function git_clone_if_not_exists() {
  DST="${ZDOTDIR:-$HOME}/${2}"
  git -C "${DST}" pull || git clone --recursive "https://github.com/${1}.git" "${DST}"
}

printf '\033[2;36m%s\033[m\n' 'Installing some utilities from GitHub.'
git_clone_if_not_exists sorin-ionescu/prezto .zprezto
git_clone_if_not_exists anyenv/anyenv .anyenv
mkdir -p "${ZDOTDIR:-$HOME}/.anyenv/plugins"
mkdir -p "${ZDOTDIR:-$HOME}/.config/anyenv"
git_clone_if_not_exists znz/anyenv-update .anyenv/plugins/anyenv-update
git_clone_if_not_exists anyenv/anyenv-install .config/anyenv/anyenv-install
