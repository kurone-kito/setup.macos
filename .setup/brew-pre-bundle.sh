#!/bin/sh
# vim: set ft=sh :

set -eu
cd "$(dirname "$0")"

. .lib.sh
. ../.zsh.d/homebrew

log_info 'Installing the minimum apps required to install bundles'

brew install mas 2> /dev/null

if ! mas account > /dev/null
then
  open '/System/Applications/App Store.app'
  say_warn 'Please open App Store and sign in using your Apple ID ...'
  until mas account > /dev/null
  do
    sleep 3
  done
fi

# Xcode: Depends for `xcodebuild` command
mas install 497799835
