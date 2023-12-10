#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. lib.sh
. ../.zsh.d/homebrew

log_info 'Installing the git extension.'
wait_dependencies git rust

. ../.zsh.d/z-cargo

cargo install --locked --git 'https://github.com/anatawa12/git-vrc.git'
git vrc install --config --global
