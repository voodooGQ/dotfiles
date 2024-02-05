ZSH_THEME_GIT_PROMPT_ADDED=" %{$fg[cyan]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$fg[yellow]%}✱"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$fg[blue]%}➦"
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$fg[magenta]%}✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[blue]%}✈"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%}"

function hg_prompt_info {
    hg prompt --angle-brackets "\
<hg:%{$fg[magenta]%}<branch>%{$reset_color%}><:%{$fg[magenta]%}<bookmark>%{$reset_color%}>\
</%{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
%{$fg[red]%}<status|modified|unknown><update>%{$reset_color%}<
patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}

function mygit() {
  if [[ "$(git config --get oh-my-zsh.hide-status)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX%{$fg_bold[red]%}${ref#refs/heads/}%{$fg[blue]%}$(git_prompt_short_sha)$(git_prompt_status)%{$fg_bold[blue]%}$ZSH_THEME_GIT_PROMPT_SUFFIX "
  fi
}

function ruby_version() {
  echo "%{$fg_bold[magenta]%} $(rbenv_prompt_info)"
}

function py_version() {
  echo "%{$fg_bold[magenta]%} $(python3 --version)"
}

function js_version() {
  echo "%{$fg_bold[magenta]%} $(node --version)"
}

PROMPT=$'
%{$fg_bold[blue]%}┌─%{$fg_bold[blue]%}[%{$fg_bold[green]%}%~%{$fg_bold[blue]%}]%{$reset_color%} - %{$fg_bold[blue]%}[%b%{$fg[yellow]%}'%D{"%Y-%m-%d %I:%M:%S"}%b$'%{$fg_bold[blue]%}]
%{$fg_bold[blue]%}└─[$(ruby_version)%{$fg_bold[blue]%}][$(js_version)%{$fg_bold[blue]%}][$(py_version)%{$fg_bold[blue]%}] <$(mygit)$(hg_prompt_info)>%{$reset_color%} '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b
'

