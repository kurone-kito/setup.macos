#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. .lib.sh
. ../.zsh.d/homebrew

log_info 'Installing the dotfiles.'
wait_dependencies coreutils git gnupg pinentry-mac

# My dotfiles
MY_REPOS="${HOME}/src/my"
DOTFILES="${MY_REPOS}/dotfiles"
mkdir -p "${MY_REPOS}"
github_clone_if_not_exists kurone-kito/dotfiles "${DOTFILES}"

"${DOTFILES}/setup"
