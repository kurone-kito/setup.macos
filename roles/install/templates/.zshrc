# source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# load zsh flagments
if [ -d "${HOME}/.zsh.d" ]; then
  for f in "${HOME}"/.zsh.d/* ; do
    source $f
  done
fi
