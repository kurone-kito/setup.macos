#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. .lib.sh
. ../.zsh.d/homebrew

if grep "brew 'mkcert'" ../Brewfile | grep -q '^#'
then
  log_warn 'Warn: skipped the mkcert initialization because it is not found on this system.'
  exit
fi

if grep "brew 'nss'" ../Brewfile | grep -q '^#'
then
  log_warn 'Warn: skipped the mkcert initialization because nss is not found on this system.'
  exit
fi

if grep "cask 'firefox-esr'" ../Brewfile | grep -q '^#'
then
  log_warn 'skipped the mkcert initialization because Firefox is not found on this system.'
  exit
fi

log_info 'Setup the localhost cert.'
wait_dependencies mkcert firefox-esr nss proctools

pgrep firefox > /dev/null \
  || /Applications/Firefox.app/Contents/MacOS/firefox \
  -new-window https://www.mozilla.org/ 1> /dev/null 2>&1 &
say_warn 'If this is your first setup, mkcert may need to be interacted with to continue it; follow the instructions in the GUI to continue the process.'
log_info 'The setup script has started Firefox because it is needed to initialize the certificate store. You can already close the browser.'
mkcert --install
killall firefox 1> /dev/null 2>&1 || true
