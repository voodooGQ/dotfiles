# !/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

stow bash git vim tmux
$DIR/scripts/./install_vundle.sh
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-";
echo "";
echo "Don't forget to load vim and run :PluginInstall";
echo "Also run: source ~/.bash_profile";
