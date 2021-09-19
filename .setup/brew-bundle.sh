#!/bin/sh

set -eu
cd "$(dirname "$0")"

. .lib.sh
. ../.zsh.d/homebrew

log_info 'Installing the Homebrew bundles.'
log_warn 'DO NOT CLOSE this terminal until instructed to do so. During installation, it may ask you to enter your password if necessary.'

sudo -v
while true; do sleep 50; sudo -n true; kill -0 "$$" || exit; done 2>/dev/null &

mkdir -p "${HOME}/Library/LaunchAgents"
brew tap 'homebrew/autoupdate'
brew autoupdate delete > /dev/null 2>&1 || true
brew autoupdate start

cd ..
brew bundle --file 'Brewfile'
brew cleanup

log_complete
