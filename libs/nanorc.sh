#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. lib.sh
. ../.zsh.d/homebrew

log_info 'Installing NanoRC dotfiles.'
wait_dependencies curl wget

# Pinned to the tip of `scopatz/nanorc`'s `master` branch, reviewed
# 2026-09-13: no upstream activity since 2020-12-17 (commit message "Merge
# pull request #345 from anderseknert/Rego: Add support for Rego"), so this
# is also the newest available revision. See #120.
NANORC_REF='1aa64a86cf4c750e4d4788ef1a19d7a71ab641dd'
nanorc_install_script="$(mktemp)"
trap 'rm -f "${nanorc_install_script}"' EXIT

curl -fsSL "https://raw.githubusercontent.com/scopatz/nanorc/${NANORC_REF}/install.sh" \
  -o "${nanorc_install_script}"

# The pinned install.sh itself fetches "archive/master.zip" internally, and
# then expects the extracted directory to be named "nanorc-master" -- both
# are still-moving references baked into the script. Rewrite both to the
# same pinned commit so the payload is pinned too, not only the installer
# script itself.
sed -i.bak \
  -e "s|archive/master\\.zip|archive/${NANORC_REF}.zip|" \
  -e "s|nanorc-master|nanorc-${NANORC_REF}|" \
  "${nanorc_install_script}"
rm -f "${nanorc_install_script}.bak"

sh "${nanorc_install_script}"
