export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ssmith"
COMPLETION_WAITING_DOTS="true"
ZSH_CUSTOM=$HOME/.zsh_custom
export FZF_BASE="$HOME/Code/github.com/junegunn/fzf"

plugins=(
  autopep8
  #aws Causing error
  catimg
  colored-man-pages
  colorize
  docker
  docker-compose
  dotenv
  fzf
  gem
  git
  httpie
  jira
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

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && \
    [ -s $BASE16_SHELL/profile_helper.sh ] && \
    eval "$($BASE16_SHELL/profile_helper.sh)"

eval `dircolors --sh ~/.gruvbox.dircolors`

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

source $ZSH/oh-my-zsh.sh

source ~/.aliases
source ~/.exports
source ~/.zsh_path
source ~/.local/bin/aws_zsh_completer.sh

if [[ -a ~/.secrets ]]; then
  source ~/.secrets
fi

eval "$(rbenv init -)"

# Start fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -"")"
fi

if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
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

autoload bashcompinit
bashcompinit
eval "$(onica-sso shell-init bash)"
