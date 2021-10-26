#!/bin/sh

set -eu
cd "$(dirname "$0")"

. .lib.sh

log_info 'Installing the Command Line Tools for Xcode'

if ! xcode-select --print-path > /dev/null 2>&1
then
  xcode-select --install
  say_warn 'The setup script is waiting for Command Line Tools for Xcode to complete its setup.'
  until xcode-select --print-path > /dev/null 2>&1
  do
      sleep 3
  done
fi

if [ -e /Applications/Xcode.app ]
then
  sudo xcodebuild -license accept
fi
