#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. lib.sh
. ../.zsh.d/homebrew

log_info 'Installing the minimum apps required to install bundles'

brew install coreutils mas 2> /dev/null

if ! mas account > /dev/null
then
  open '/System/Applications/App Store.app'
  say_warn 'Please open App Store and sign in using your Apple ID. The setup will automatically recognize your sign-in and go to the next step, but it may not detect your sign-in correctly on the macOS Monterey. In that case, you can also force it to go to the next step by pressing the [ENTER] key.'
  until mas account > /dev/null
  do
    if timeout --foreground 7s read
    then
      break
    fi
  done
fi

# Xcode: Depends for `xcodebuild` command
mas install 497799835
