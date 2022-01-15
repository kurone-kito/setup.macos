#!/bin/sh

set -eu

cd "$(dirname "$0")"

../bin/update_system

if [ "$(uname -m)" = 'arm64' ]; then
  sudo softwareupdate --agree-to-license --install-rosetta
fi
