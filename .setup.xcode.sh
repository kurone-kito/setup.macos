#!/bin/sh
# vim: set ft=sh :

set -eu
cd $(dirname $0)

source .setup.lib.sh

log_warn 'NOTE: If the GUI installer launches, do not proceed until it is complete.'

xcode-select --install 2> /dev/null || true
sudo xcodebuild -runFirstLaunch
