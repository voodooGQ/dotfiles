# dotfiles

My dotfile configurations for easier server comfort. I'm just a copy-cat of [Peter Cullen](https://github.com/peterlcullen/dotfiles) who did a much more extensive job... so go check his out instead.

## Stow
Use [stow](https://www.gnu.org/software/stow/) to install the desired packages in this repo.  
  - `brew install stow` to get stow on a mac
  - the repo should be at `~/dotfiles` because stow will place the symlinks up one directory (and we want them in `~`)
  - cd into the repo, then `stow bash git vim` to install configurations in the bash, git, and vim directories.  Add any others you need.

## Files outside of this repo
For convenience, the `.bash_profile` in this repo will source any files matching the glob `~/.extra*`