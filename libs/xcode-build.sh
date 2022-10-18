#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. lib.sh

if [ ! -e /Applications/Xcode.app ]
then
  log_notice 'Skip the Docker setup because not found the Xcode.'
  exit
fi

log_info 'Initialize the XCode'

sudo xcodebuild -license accept
sudo xcodebuild -runFirstLaunch
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
