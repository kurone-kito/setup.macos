#!/bin/sh

set -eu
cd "$(dirname "$0")"

. .lib.sh
. ../.zsh.d/homebrew

if grep "cask 'unity-hub'" ../Brewfile | grep -q '^#'
then
  log_warn 'skipped the Unity installation because Unity Hub is not found on this system.'
  exit
fi

log_info 'Installing the Unity.'
wait_dependencies unity-hub

UNITY_HUB='/Applications/Unity Hub.app/Contents/MacOS/Unity Hub'

if ! which "${UNITY_HUB}" > /dev/null
then
  log_warn 'skipped the Unity installation because Unity Hub is not found on this system.'
  exit
fi

install_unity() {
  VERSION="${1}"
  if ! "${UNITY_HUB}" -- --headless editors --installed | grep -q "${VERSION}"
  then
    "${UNITY_HUB}" -- \
      --headless install \
      --version "${VERSION}" \
      --module android \
      --module mac-il2cpp \
      --module documentation \
      --module language-ja \
      --module windows-mono \
      --childModules
  fi
}

# ! FIXME: It's not working: Error while installing an editor or a module. Error: Provided editor version does not match to any known Unity Editor versions.
install_unity 2019.4.31f1
say_warn 'If this is your first setup, the Unity Hub may need to be interacted with to continue it; follow the instructions in the GUI to continue the process.'
