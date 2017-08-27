# dotfiles

My dotfile configurations for easier server comfort.

## Stow
Use [stow](https://www.gnu.org/software/stow/) to install the desired packages in this repo. You can do this manually, but it'll tak awhile
  - `brew install stow` to get stow on a mac
  - the repo should be at `~/dotfiles` because stow will place the symlinks up one directory (and we want them in `~`)
  - cd into the repo, then `stow bash git vim tmux` to install configurations in the bash, git, and vim directories.  Add any others you need.

## Files outside of this repo
For convenience, the `.bash_profile` in this repo will source any files matching the glob `~/.extra*`

## Vim
  - make sure vim config are installed with `stow vim`
  - run `./install_vundle.sh`
  - execute `:PluginInstall` inside vim
