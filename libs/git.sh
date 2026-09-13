#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. lib.sh
. ../.zsh.d/homebrew

log_info 'Installing the git extension.'
wait_dependencies git rust

. ../.zsh.d/z-cargo

# Pinned to the `v0.1.0` tag (commit 77c3d92aa89948aaef4700308cee463242238602),
# reviewed 2026-09-13 — the only published tag; `--locked` alone pins the
# dependency versions in that checkout's lockfile, not which checkout is
# used, so an explicit --tag is still required. See #120.
cargo install --locked --tag 'v0.1.0' --git 'https://github.com/anatawa12/git-vrc.git'
git vrc install --config --global
