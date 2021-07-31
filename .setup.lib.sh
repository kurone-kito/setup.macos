#!/bin/sh
# vim: set ft=sh :

set -eu

github_clone_if_not_exists() {
  git -C "${2}" pull \
    || git clone --recursive "https://github.com/${1}.git" "${2}"
}

log_info() {
  printf '\033[2;36m%s\033[m\n' "$@"
}

log_notice() {
  printf '\033[1;36m%s\033[m\n' "$@"
}

log_warn() {
  printf '\033[1;33m%s\033[m\n' "$@"
}

say_warn() {
  printf '\033[1;33m%s\033[m\n' "$@"
  if type -a say > /dev/null 2>&1
  then
    ACTOR="$(say -v \? | grep 'en_US' | tail -n 1 | awk '{print $1}')"
    say -r 150 -v "${ACTOR}" "$@" &
  fi
}
