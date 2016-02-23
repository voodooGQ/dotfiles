[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

for file in ~/.{path,bash_prompt,exports,aliases,functions,git-completion.bash}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/bin:$PATH"

alias port="sudo lsof -i"

export EDITOR=subl
export PATH="/usr/local/sbin:$PATH"