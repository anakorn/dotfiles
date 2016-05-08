# load zgen
source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
  echo "Creating a zgen save"

  zgen oh-my-zsh

  # plugins
  zgen oh-my-zsh plugins/fasd
  zgen oh-my-zsh plugins/git

  # completions
  zgen load zsh-users/zsh-completions src

  # theme

  zgen save
fi

# load powerline
source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# aliases
alias ls="ls -Aho"
