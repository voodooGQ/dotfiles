source ~/.exports

plugins=(
  colored-man-pages
  colorize
  docker
  docker-compose
  dotenv
  fzf
  gem
  git
  httpie
  jsontools
  kubectl
  node
  npm
  pip
  pyenv
  pylint
  python
  postgres
  rake
  rbenv
  ruby
  sudo
  tmux
  tmuxinator
  vi-mode
  vundle
  zsh_reload
)

[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

eval `dircolors --sh ~/.gruvbox.dircolors`

source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.functions
source ~/.zsh_path
source ~/.local/bin/aws_zsh_completer.sh

# Secrets
if [[ -a ~/.secrets ]]; then
  source ~/.secrets
fi

# SSH Agent
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
ssh-add -l > /dev/null || ssh-add

autoload bashcompinit
bashcompinit

export PATH="/usr/local/bin:$PATH"

fpath=(/usr/local/share/zsh/site-functions $fpath)
