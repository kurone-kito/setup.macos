#!/bin/sh
# vim: set ft=sh :

set -eu
cd "$(dirname "$0")"

. .lib.sh
. ../.zsh.d/homebrew

if which brew > /dev/null 2>&1
then
  log_info 'Updating the Homebrew CLI.'

  brew upgrade
else
  log_info 'Installing the Homebrew CLI.'
  say_warn 'Press ENTER to continue if the Homebrew setup may ask you to interact.'

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  . ../.zsh.d/homebrew
fi
