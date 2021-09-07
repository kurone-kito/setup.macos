#!/bin/sh
# vim: set ft=sh :

set -eu
cd "$(dirname "$0")"

. .lib.sh

log_info 'Installing the updators.'

# Update scripts
mkdir -p "${HOME}/bin"
cd ..

BINDIR="$(pwd)/bin"
find "${BINDIR}" -type f -print0 \
  | xargs -0 -I{} basename {} \
  | xargs -I{} ln -snf "${BINDIR}/{}" "${HOME}/bin/{}"
