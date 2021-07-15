#!/bin/sh
# vim: set ft=sh :

set -eu
cd "$(dirname "$0")"

. .setup.lib.sh

log_info 'Setup the localhost cert.'

pgrep firefox > /dev/null \
  || /Applications/Firefox.app/Contents/MacOS/firefox \
  -new-window https://www.mozilla.org/ 1> /dev/null 2>&1 &
mkcert --install
