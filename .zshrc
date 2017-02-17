# load docker machine
eval "$(docker-machine env default)"

# load nvm
export NVM_DIR="${HOME}/.nvm"
source "$(brew --prefix nvm)/nvm.sh"

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
alias ls="gls -AhoGF --color --group-directories-first"
alias chrome="open -a 'Google Chrome'"
alias aws-env-ow="aws elasticbeanstalk describe-environments --application-name overwatch"
