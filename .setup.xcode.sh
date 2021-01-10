#!/bin/sh
# vim: set ft=sh :

set -eu
cd $(dirname $0)

printf '\033[1;33m%s\033[m\n' 'NOTE: If the GUI installer launches, do not proceed until it is complete.'
xcode-select --install 2> /dev/null || true
sudo xcodebuild -runFirstLaunch
