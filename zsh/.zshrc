source ~/.exports

plugins=(
  autopep8
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
  ng
  node
  npm
  pep8
  pip
  pyenv
  pylint
  python
  postgres
  rake
  rbenv
  ruby
  sudo
  taskwarrior
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

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

source ~/.zsh_path
source ~/.local/bin/aws_zsh_completer.sh

# Secrets
if [[ -a ~/.secrets ]]; then
  source ~/.secrets
fi

# Start fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -"")"
fi

if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
ssh-add -l > /dev/null || ssh-add

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/ssmith/Code/onica/s3api.sls/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/ssmith/Code/onica/s3api.sls/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/ssmith/Code/onica/s3api.sls/node_modules/tabtab/.completions/sls.zsh ]] && . /home/ssmith/Code/onica/s3api.sls/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/ssmith/Code/onica/s3api.sls/node_modules/tabtab/.completions/slss.zsh ]] && . /home/ssmith/Code/onica/s3api.sls/node_modules/tabtab/.completions/slss.zsh

function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}

. ~/Code/github.com/rupa/z/z.sh

autoload bashcompinit
bashcompinit
