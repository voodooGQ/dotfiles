# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

LOCAL_BIN=$HOME/.local/bin

source $LOCAL_BIN/p10k/init
source $HOME/.exports
source $ZSH_CUSTOM/.plugins
source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
source $HOME/.zsh/.path
source $LOCAL_BIN/secrets_init
source $LOCAL_BIN/ssh_agent
source $LOCAL_BIN/bash_comp
source $LOCAL_BIN/fpath_init
source $LOCAL_BIN/tmux_session_init
eval "$(mcfly init zsh)"

export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"
eval "$(direnv hook zsh)"
eval "$(/opt/homebrew/bin/mise activate zsh)"
source $LOCAL_BIN/pnpm_init
source $LOCAL_BIN/p10k/load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
