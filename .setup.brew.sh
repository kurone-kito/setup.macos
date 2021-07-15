#!/bin/sh
# vim: set ft=sh :

set -eu
cd "$(dirname "$0")"

. .setup.lib.sh

if type -a brew > /dev/null 2>&1
then
  log_info 'Updating the Homebrew CLI.'

  brew upgrade
else
  log_info 'Installing the Homebrew CLI.'

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  . .zsh.d/homebrew
fi

if ! type -a mas > /dev/null 2>&1
then
  log_info 'Installing the minimum apps required to install bundles'

  brew install mas
fi

if ! mas account > /dev/null
then
  say_warn 'Please open App Store and sign in using your Apple ID ...'
  until mas account > /dev/null
  do
    sleep 3
  done
fi

log_info 'Installing the Homebrew bundles.'

brew bundle --file 'Brewfile'
brew cleanup
brew autoupdate delete > /dev/null
brew autoupdate start
