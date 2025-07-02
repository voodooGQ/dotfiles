.dotfiles
===

Mac OS configuration files

```shell
git clone git@github.com/voodooGQ/dotfiles.git ~/Code/github.com/voodooGQ/dotfiles
cd ~/Code/github.com/voodooGQ
./bin/init
# After Oh My ZSH install
./bin/install
```

## Installation

A `bin` directory exists which contains all installation scripts

### `brew`

This script simply taps the `homebrew/bundle` lib, and then runs the bundle of the root level [`Brewfile`](#brewfile). The [`Brewfile`](#brewfile) contains all packages that need to be installed on the system.

### `clone`

The `clone` script contains a function that will check if a directory exists, if not, it will ignore it, otherwise it will create and download the specified repo into the configured path. This pattern allows for creating multiple areas that repositories can be downloaded, allowing me to specify where system level repositories go, as well as separating out any personal repositories from work based ones.

### `init`

This is the initial script that should be ran upon download. It will check to see if [oh-my-zsh](https://ohmyz.sh/) exists, and if not, download and install it. The [`install`](#install) script must be ran after this script, and is unchainable due to the shell changing after the fact.

### `install`

The `install` script goes through and does any type of installation/configuration needed to get the system up to par. 

First, we verify if `xcode` is installed, since this is a general requirement for a lot of libraries. If it's found already it will ignore, otherwise it will isntall.

Next, we will check if Homebrew exists, and install/update if not. Then it will run the [`brew`](#brew) script to install all packages.

Mise Dir Env is next, allowing us to automagically install project level `.tool-version` files for mise

CA certs are then installed in the `$HOME/.certs` folder for use with browsers and other api level calls.

We'll then [`clone`](#clone) all system and project level repositories to the system.

The [`.macos`](#macos) file is then sourced to set any registry level configurations for the system.

Finally, a cron is configured that will allow us to continuely sync notes back up to the repository that contains them.

### `link`

The `link` script will symlink specified files to the `$HOME` folder. This is what allows us to continuely update them and make sure the repository is aware. If a link is already found it will remove it, and then relink to the specified file/folder. If you add new items to the dofiles you should link them in most circumstances.

## Features

### Brewfile

The Brewfile installs all system level packages and applications, as well as vscode extensions.

### ZSH

ZSH is my main shell. It's supplemented by [oh-my-zsh](https://ohmyz.sh/) for added functionality.

#### `.zshrc`

The `.zshrc` is the main configuration file for the ZSH shell. This is a pretty _clean_ file, that calls to local bin scripts for it's functionality. Keeping things separated in this manner allows for better grokability and debugging.

#### `.zsh` dir

The `.zsh` dir contains custom support files for ZSH. 

##### `.zsh/.path`

The `.path` file contains a listing of all additions to the $PATH global. This is how we let the shell know where to find our stuff

##### `.zsh/.plugins`

Additional plugins for zsh are added via the `.plugins` file

### `.macos`

The `.macos` file contains registry overrides for a Macintosh computer. Allowing to make automated configurations to the base level system