#!/bin/sh
# vim: set ft=sh :

set -eu

github_clone_if_not_exists() {
  git -C "${2}" pull 2> /dev/null \
    || git clone --recursive "https://github.com/${1}.git" "${2}" \
    || [ -d "${2}" ]
}

log_info() {
  printf '\033[2;36m%s\033[m\n' "$@"
}

log_notice() {
  printf '\033[1;36m%s\033[m\n' "$@"
}

log_complete() {
  log_notice 'Setup has completed its work on this terminal. You can close me, but other terminals may still be in the progress.'
}

log_warn() {
  printf '\033[1;33m%s\033[m\n' "$@"
}

say_warn() {
  log_warn "$@"
  if type -a say > /dev/null 2>&1
  then
    ACTOR="$(say -v \? | grep 'en_US' | tail -n 1 | awk '{print $1}')"
    say -r 150 -v "${ACTOR}" "Attention: $*" &
  fi
}

wait_dependencies() {
  log_notice "waiting for dependencies: $*"
  for dp in "$@"
  do
    until \
      brew list "$dp" > /dev/null 2>&1 || \
      brew list --cask "$dp" > /dev/null 2>&1
    do
      sleep 5
    done
  done
  log_info "Continue. detected the dependencies: $*"
}
