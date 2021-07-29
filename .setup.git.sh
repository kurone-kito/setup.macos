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

MY_REPOS="${HOME}/src/my"
DOTFILES="${MY_REPOS}/dotfiles"
mkdir -p "${MY_REPOS}"
git_clone_if_not_exists kurone-kito/dotfiles "${DOTFILES}"
"${DOTFILES}/setup"

for rcfile in $(find "${ZDOTDIR:-$HOME}"/.zprezto/runcoms -type f -name 'z*')
do
  ln -snf "${rcfile}" "${ZDOTDIR:-$HOME}/.${rcfile##*/}"
done
