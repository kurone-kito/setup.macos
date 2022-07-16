#!/bin/sh

set -eu

cd "$(cd "$(dirname "$0")"; pwd)"

../bin/update_system

if [ "$(uname -m)" = 'arm64' ]; then
  sudo softwareupdate --agree-to-license --install-rosetta
fi
