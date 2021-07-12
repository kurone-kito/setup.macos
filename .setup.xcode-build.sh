#!/bin/sh
# vim: set ft=sh :

set -eu
cd "$(dirname "$0")"

. .setup.lib.sh

if [ ! -e /Applications/Xcode.app ]
then
  log_notice 'Skip the Docker setup because not found the Xcode.'
  exit
fi

log_info 'Initialize the XCode'

sh .setup.xcode-select.sh

sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -license accept
sudo xcodebuild -runFirstLaunch
