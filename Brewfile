# Taps
tap 'homebrew/cask'
tap 'homebrew/cask-fonts'
tap 'homebrew/cask-versions'
tap 'homebrew/bundle'
tap 'nicoverbruggen/homebrew-cask'
tap 'stripe/stripe-cli'
tap 'argoproj/tap'

# Core
brew 'python' # Python
brew 'asdf' # Version manager
brew 'awscli' # AWS CLI
brew 'eza' # Ls with colors
brew 'curl' # Curl
brew 'kustomize' # Kustomize
brew 'direnv' # Environment switcher
brew 'golang' # Go
brew 'git' # Git
brew 'bat' # Cat with wings
brew 'mas' # Mac App Store CLI
brew 'htop' # Better top
brew 'diff-so-fancy' # Better diff
brew 'git-delta' # Better diff for git
brew 'coreutils' # macOS are outdated
brew 'jq' # JSON processor
brew 'zsh' # Zsh
brew 'yamllint' # YAML linter
brew 'mcfly' # Better history
brew 'vault' # Vault
brew 'argocd' # ArgoCD
brew 'minikube' # Minikube
brew 'ripgrep' # Ripgrep
brew 'ripgrep-all' # Ripgrep all
brew 'tfenv' # Terraform version manager
brew 'postgresql@12', restart_service: true # PG 12
brew 'redis', restart_service: true # Redis
brew 'tmux' # Tmux
brew 'tmuxinator' # Tmux profiles
brew 'reattach-to-user-namespace' # Tmux copy paste

# Fonts
cask 'font-awesome-terminal-fonts'  # Font Awesome for terminal
cask 'homebrew/cask-fonts/font-fontawesome' # Font Awesome
cask 'font-fira-code' # Fira Code font

# Apps
cask 'aws-vpn-client' unless system ".local/bin/installed 'AWS VPN Client.app'" # AWS VPN
cask 'flameshot' unless system ".local/bin/installed flameshot.app" # Screenshot
cask 'spotify' unless system ".local/bin/installed Spotify.app" # Spotify
cask 'iterm2' unless system ".local/bin/installed iTerm2.app" # iTerm2
cask 'adobe-creative-cloud' unless system ".local/bin/installed 'Creative Cloud.app'" # Adobe Creative Cloud
cask 'dash' unless system ".local/bin/installed Dash.app" # Dash
cask '1password' unless system ".local/bin/installed '1Password Installer.app'" # 1Password
cask 'caffeine' unless system ".local/bin/installed Caffeine.app" # Caffeine
cask 'dbngin' unless system ".local/bin/installed DBngin.app"  # Database manager
cask 'docker' unless system ".local/bin/installed Docker.app" # Docker
cask 'brave-browser' unless system ".local/bin/installed 'Brave Browser.app'" # Brave Browser
cask 'github' unless system ".local/bin/installed 'GitHub Desktop.app'" # Github Desktop
cask 'imageoptim' unless system ".local/bin/installed ImageOptim.app" # Optimize images # Rest client
cask 'slack' unless system ".local/bin/installed Slack.app" # Slack
cask 'the-unarchiver' unless system ".local/bin/installed 'The Unarchiver.app'" # Unarchiver
cask 'visual-studio-code' unless system ".local/bin/installed 'Visual Studio Code.app'" # VSCode
cask 'zoom' unless system ".local/bin/installed 'zoom.us.app'" # Zoom
cask 'numi' unless system ".local/bin/installed 'Numi.app'" # Calculator

# Mac Apple Store
mas 'Alfred', id: 405843582 # Alfred
mas 'Clipboard Manager - PastePal', id: 1503446680 # Clipboard manager
mas 'Magnet', id: 441258766 # Window manager
mas 'MindNode - Mind Map & Outline', id: 1289197285 # Brain Map
# https://github.com/mas-cli/mas/issues/498
# mas 'iBar-Menubar icon control tool', id: '-2146090692' # Menubar icon control
mas 'Boop', id: 1518425043 # Various developer tools
mas 'ColorSlurp', id: 1287239339 # Color picker
mas 'Trello', id: 1278508951 # Trello
