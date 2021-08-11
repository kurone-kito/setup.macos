#!/bin/sh
# vim: set ft=sh :

set -eu
cd "$(dirname "$0")"

. .lib.sh

log_info 'Installing the updators.'

# Update scripts
mkdir -p "${HOME}/bin"
for f in "$(pwd)/bin/"*
do
  ln -snf "${f}" "${HOME}/bin/$(basename "${f}")"
done
