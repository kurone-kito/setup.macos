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

docker pull hello-world
docker pull alpine
docker pull busybox
docker pull debian
docker pull ubuntu
docker pull docker
docker pull docker:dind
docker pull docker:git
docker pull node:20
docker pull node:20-alpine
docker pull node:20-slim
docker pull node:22
docker pull node:22-alpine
docker pull node:22-slim
docker pull node:23
docker pull node:23-alpine
docker pull node:23-slim
docker pull node:24
docker pull node:24-alpine
docker pull node:24-slim
docker pull ghcr.io/catthehacker/ubuntu:act-20.04
docker pull ghcr.io/catthehacker/ubuntu:act-22.04
docker pull ghcr.io/catthehacker/ubuntu:act-latest

# ! Commented out because the container is too large!
# docker pull ghcr.io/catthehacker/ubuntu:full-20.04
# docker pull ghcr.io/catthehacker/ubuntu:full-latest

../bin/update_docker || true
