#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. lib.sh
. ../.zsh.d/homebrew

if grep "cask 'docker'" ../Brewfile | grep -q '^#'
then
  log_notice 'Skip the Docker setup because that not found the Docker command.'
  exit
fi
wait_dependencies docker proctools

if ! (pgrep docker > /dev/null && docker system info > /dev/null 2>&1)
then
  open '/Applications/Docker.app'
  log_notice "waiting for launch docker"
  say_warn 'If this is your first setup, Docker may need to be interacted with to continue it; follow the instructions in the GUI to continue the process. After restarting the setup, please do not change any Docker settings until it is complete. It will cause the setup to stop abnormally as it restarts automatically when updated settings.'
  until which docker > /dev/null 2>&1
  do
      sleep 3
  done
  until docker system info > /dev/null 2>&1
  do
      sleep 3
  done
fi

log_info 'Installing some containers for Docker.'
log_warn 'DO NOT CHANGE the settings of Docker Desktop on this setup running.'

# Entries below are removed once upstream declares them end-of-life -- this
# list tracks currently-supported releases, not a fixed snapshot. Removing an
# entry here does not remove an already-pulled image from the machine, since
# bin/update_docker re-pulls whatever is already present regardless of this
# list; that is a separate, out-of-scope concern (see #122).
docker pull hello-world
docker pull alpine
docker pull busybox
docker pull debian
docker pull ubuntu
docker pull docker
docker pull docker:dind
docker pull docker:git
docker pull node:22
docker pull node:22-alpine
docker pull node:22-slim
docker pull node:24
docker pull node:24-alpine
docker pull node:24-slim
docker pull ghcr.io/catthehacker/ubuntu:act-22.04
docker pull ghcr.io/catthehacker/ubuntu:act-latest

# ! Commented out because the container is too large!
# docker pull ghcr.io/catthehacker/ubuntu:full-20.04
# docker pull ghcr.io/catthehacker/ubuntu:full-latest

../bin/update_docker || true
