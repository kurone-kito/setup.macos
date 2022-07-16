#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. .lib.sh
. ../.zsh.d/homebrew

log_info 'Installing NanoRC dotfiles.'
wait_dependencies curl wget

curl -fsSL https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh \
  | sh
