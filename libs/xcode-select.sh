#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. lib.sh

log_info 'Installing the Command Line Tools for Xcode'

sudo rm -rf /Library/Developer/CommandLineTools
sudo xcode-select --install
say_warn 'The setup script is waiting for Command Line Tools for Xcode to complete its setup.'
until [ -e /Library/Developer/CommandLineTools ]
do
  sleep 3
done

log_info 'Detected the Command Line Tools for Xcode'
sleep 30 # ! TODO: Consider the appropriate way to wait for the `xcode-select --install` installation to complete.

if [ -e /Applications/Xcode.app ]
then
  sudo xcodebuild -license accept
fi
