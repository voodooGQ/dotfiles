# Load Default profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load the shell dotfiles, and then some:
for file in ~/.{path,bash_prompt,exports,aliases,functions,git-completion.bash}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

if [ "$(uname)" == "Darwin"  ]; then
    # Just ignore, this gets around an error in mac where it doesn't understand
    clear;
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  [ -r "$HOME/.linux_aliases" ] && [ -f "$HOME/.linux_aliases" ] && source "$HOME/.linux_aliases";
fi

source /usr/local/etc/bash_completion.d/tmuxinator

export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:.nvm/versions/node/v5.0.0/bin:/usr/local/sbin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
# export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
