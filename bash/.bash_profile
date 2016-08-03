## Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  Load the default .profile

# Load Default profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load the shell dotfiles, and then some:
for file in ~/.{path,bash_prompt,exports,aliases,functions,git-completion.bash}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# expr causes a command not found error in Mac when sourced but doesn't cause
# issues beyond that. Best solution I could find.
if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  [ -r "$HOME/.linux_aliases" ] && [ -f "$HOME/.linux_aliases" ] && source "$HOME/.linux_aliases";
fi

# Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

ssh-add ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa_nerdery
