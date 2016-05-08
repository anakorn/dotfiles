# load zgen
source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
  echo "Creating a zgen save"

  zgen oh-my-zsh

  # plugins
  zgen oh-my-zsh plugins/fasd

  # completions
  zgen load zsh-users/zsh-completions src

  # theme

  zgen save
fi

# aliases
alias ls="ls -Aho"
