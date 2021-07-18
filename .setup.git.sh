#!/bin/sh
# vim: set ft=sh :

set -eu
cd $(dirname $0)

source .setup.lib.sh

git_clone_if_not_exists() {
  git -C "${2}" pull \
    || git clone --recursive "https://github.com/${1}.git" "${2}"
}

log_info 'Installing some utilities from GitHub.'

git_clone_if_not_exists sorin-ionescu/prezto "${ZDOTDIR:-$HOME}/.zprezto"
git_clone_if_not_exists anyenv/anyenv "${$HOME}/.anyenv"
mkdir -p "${HOME}/.anyenv/plugins"
mkdir -p "${HOME}/.config/anyenv"
git_clone_if_not_exists znz/anyenv-update .anyenv/plugins/anyenv-update
git_clone_if_not_exists anyenv/anyenv-install .config/anyenv/anyenv-install

MY_REPOS="${HOME}/src/my"
DOTFILES="${MY_REPOS}/dotfiles"
mkdir -p "${MY_REPOS}"
git_clone_if_not_exists kurone-kito/dotfiles "${DOTFILES}"
"${DOTFILES}/setup"
