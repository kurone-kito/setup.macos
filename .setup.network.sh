#!/bin/sh
# vim: set ft=sh :

set -eu

printf '\033[2;36m%s\033[m\n' 'Setup the localhost cert.'
pgrep firefox > /dev/null || /Applications/Firefox.app/Contents/MacOS/firefox -new-window https://www.mozilla.org/ 1> /dev/null 2>&1 &
mkcert --install
