# load zgen
source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
  echo "Creating a zgen save"
  zgen save
fi

# aliases
alias ls="ls -Aho"
