# -*- mode: sh -*-
# vim: set ft=sh :

# source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc"
fi

# load zsh flagments
if [[ -d "${HOME}/.zsh.d" ]]; then
  for f in "${HOME}"/.zsh.d/* ; do
    source $f
  done
fi
