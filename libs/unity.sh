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
  CPU_ARCH="${3:-x86_64}"
  "${UNITY_HUB}" -- --headless install -v "${VERSION}" -c "${CHANGESET}" \
    -a "${CPU_ARCH}" -m android -m documentation -m ios -m language-ja -m linux \
    -m windows-mono --cm || true
}

open "${UNITY_HUB_APP}" -g

say_warn 'If this is your first setup, please log in to your account in the running Unity Hub. When ready, continue with the installation.'

log_warn 'Enter [Y] if you are logged in and want to install Unity. (y/N)'
read -r YN

case "${YN}" in
  [yY]*)
    install_unity 2019.4.31f1 d4ddf0d95db9
    install_unity 2022.3.6f1 b9e6e7e9fa2d arm64
    install_unity 2022.3.6f1 b9e6e7e9fa2d x86_64
    install_unity 2022.3.22f1 887be4894c44 arm64
    install_unity 2022.3.22f1 887be4894c44 x86_64
    ;;
  *)
    log_info 'skipped the Unity installation due to the user choice'
    ;;
esac
