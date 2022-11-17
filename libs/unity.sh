#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. lib.sh
. ../.zsh.d/homebrew

if grep "cask 'unity-hub'" ../Brewfile | grep -q '^#'
then
  log_warn 'skipped the Unity installation because Unity Hub is not found on this system.'
  exit
fi

log_info 'Installing the Unity.'
wait_dependencies unity-hub

UNITY_HUB_APP='/Applications/Unity Hub.app'
UNITY_HUB="${UNITY_HUB_APP}/Contents/MacOS/Unity Hub"

if ! which "${UNITY_HUB}" > /dev/null
then
  log_warn 'skipped the Unity installation because Unity Hub is not found on this system.'
  exit
fi

install_unity() {
  VERSION="${1}"
  CHANGESET="${2}"
  if "${UNITY_HUB}" -- --headless editors --installed 2>&1 | grep -q "${VERSION}"
  then
    log_info "Unity ${VERSION} is already installed."
  else
    "${UNITY_HUB}" -- --headless install -v "${VERSION}" -c "${CHANGESET}" \
      -m android -m documentation -m language-ja -m windows-mono --cm \
      || true
  fi
}

open "${UNITY_HUB_APP}" -g

say_warn 'If this is your first setup, please log in to your account in the running Unity Hub. When ready, continue with the installation.'

log_warn 'Enter [Y] if you are logged in and want to install Unity. (y/N)'
read -r YN

case "${YN}" in
  [yY]*)
    install_unity 2019.3.13f1 d4ddf0d95db9
    install_unity 2019.4.40f1 ffc62b691db5
    ;;
  *)
    log_info 'skipped the Unity installation due to the user choice'
    ;;
esac
