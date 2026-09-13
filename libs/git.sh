#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. lib.sh
. ../.zsh.d/homebrew

log_info 'Installing the git extension.'
wait_dependencies git rust

. ../.zsh.d/z-cargo

# Pinned to the commit the `v0.1.0` tag pointed at when reviewed on
# 2026-09-13 (the only published tag, kept here only as human-readable
# provenance). `--locked` alone pins the dependency versions in that
# checkout's lockfile, not which checkout is used; `--tag` still resolves a
# mutable ref on every install, so use `--rev` with the commit itself for a
# genuinely immutable pin. See #120.
cargo install --locked --rev '77c3d92aa89948aaef4700308cee463242238602' \
  --git 'https://github.com/anatawa12/git-vrc.git'
git vrc install --config --global
