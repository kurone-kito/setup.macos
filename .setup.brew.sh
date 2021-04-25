#!/bin/sh
# vim: set ft=sh :

set -eu
cd $(dirname $0)

if [ $(which brew | wc -l) -eq 0 ]; then
  printf '\033[2;36m%s\033[m\n' 'Installing the Homebrew CLI.'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  source .zsh.d/homebrew
fi

printf '\033[2;36m%s\033[m\n' 'Installing the Homebrew bundles.'
brew bundle --file 'Brewfile'
brew upgrade
brew cleanup
brew autoupdate delete
brew autoupdate start
