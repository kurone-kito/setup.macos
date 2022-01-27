#!/bin/sh

set -eu
cd "$(dirname "$0")"

. .lib.sh
. ../.zsh.d/homebrew

if grep "cask 'docker'" ../Brewfile | grep '^#' > /dev/null
then
  log_notice 'Skip the Docker setup because that not found the Docker command.'
  exit
fi
wait_dependencies docker proctools

if ! (pgrep docker > /dev/null && docker system info > /dev/null 2>&1)
then
  open '/Applications/Docker.app'
  log_notice "waiting for launch docker"
  say_warn 'If this is your first setup, Docker may need to be interacted with to continue it; follow the instructions in the GUI to continue the process.'
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
docker pull almalinux
docker pull debian
docker pull ubuntu
docker pull docker
docker pull docker:dind
docker pull docker:git
docker pull node:12-alpine
docker pull node:12-buster-slim
docker pull node:12
docker pull node:14-alpine
docker pull node:14-buster-slim
docker pull node:14
docker pull node:16-alpine
docker pull node:16-buster-slim
docker pull node:16
docker pull node:17-alpine
docker pull node:17-buster-slim
docker pull node:17
docker pull catthehacker/ubuntu:act-latest
# docker pull catthehacker/ubuntu:full-20.04 # ! Commented out because the container is too lerge!

../bin/update_docker || true
