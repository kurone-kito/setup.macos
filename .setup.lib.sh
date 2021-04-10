#!/bin/sh
# vim: set ft=sh :

set -eu

function force_link() {
  rm -rf "${2}"
  ln -s "${1}" "${2}"
}
