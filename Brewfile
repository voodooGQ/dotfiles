# Taps
tap 'argoproj/tap'
tap 'homebrew/bundle'
tap 'homebrew/cask'
tap 'homebrew/cask-fonts'
tap 'homebrew/cask-versions'
tap 'nicoverbruggen/homebrew-cask'
tap 'stripe/stripe-cli'
tap 'kajabi/kjctl', 'git@github.com:Kajabi/kjctl.git'

# Core
brew 'argocd' # ArgoCD
brew 'asdf' # Version manager
brew 'awscli' # AWS CLI
brew 'bat' # Cat with wings
brew 'coreutils' # macOS are outdated
brew 'curl' # Curl
brew 'diff-so-fancy' # Better diff
brew 'direnv' # Environment switcher
brew 'eza' # Ls with colors
brew 'git' # Git
brew 'git-delta' # Better diff for git
brew 'golang' # Go
brew 'htop' # Better top
brew 'jq' # JSON processor
brew 'kustomize' # Kustomize
brew 'mas' # Mac App Store CLI
brew 'mcfly' # Better history
brew 'minikube' # Minikube
brew 'postgresql@12', restart_service: true # PG 12
brew 'python' # Python
brew 'reattach-to-user-namespace' # Tmux copy paste
brew 'redis', restart_service: true # Redis
brew 'ripgrep' # Ripgrep
brew 'ripgrep-all' # Ripgrep all
brew 'tfenv' # Terraform version manager
brew 'tmux' # Tmux
brew 'tmuxinator' # Tmux profiles
brew 'vault' # Vault
brew 'yamllint' # YAML linter
brew 'wget' # Wget
brew 'zsh' # Zsh
brew 'kjctl' # KJCTL

# Fonts
cask 'font-3270-nerd-font'
cask 'font-agave-nerd-font'
cask 'font-anonymice-nerd-font'
cask 'font-arimo-nerd-font'
cask 'font-aurulent-sans-mono-nerd-font'
cask 'font-awesome-terminal-fonts'  # Font Awesome for terminal
cask 'font-bigblue-terminal-nerd-font'
cask 'font-bitstream-vera-sans-mono-nerd-font'
cask 'font-blex-mono-nerd-font'
cask 'font-caskaydia-cove-nerd-font'
cask 'font-code-new-roman-nerd-font'
cask 'font-cousine-nerd-font'
cask 'font-daddy-time-mono-nerd-font'
cask 'font-dejavu-sans-mono-nerd-font'
cask 'font-droid-sans-mono-nerd-font'
cask 'font-fantasque-sans-mono-nerd-font'
cask 'font-fira-code' # Fira Code font
cask 'font-fira-code-nerd-font'
cask 'font-fira-mono-nerd-font'
cask 'font-go-mono-nerd-font'
cask 'font-gohufont-nerd-font'
cask 'font-hack-nerd-font'
cask 'font-hasklug-nerd-font'
cask 'font-heavy-data-nerd-font'
cask 'font-hurmit-nerd-font'
cask 'font-im-writing-nerd-font'
cask 'font-inconsolata-go-nerd-font'
cask 'font-inconsolata-lgc-nerd-font'
cask 'font-inconsolata-nerd-font'
cask 'font-iosevka-nerd-font'
cask 'font-jetbrains-mono-nerd-font'
cask 'font-lekton-nerd-font'
cask 'font-liberation-nerd-font'
cask 'font-meslo-lg-nerd-font'
cask 'font-monofur-nerd-font'
cask 'font-monoid-nerd-font'
cask 'font-mononoki-nerd-font'
cask 'font-mplus-nerd-font'
cask 'font-noto-nerd-font'
cask 'font-open-dyslexic-nerd-font'
cask 'font-overpass-nerd-font'
cask 'font-profont-nerd-font'
cask 'font-proggy-clean-tt-nerd-font'
cask 'font-roboto-mono-nerd-font'
cask 'font-sauce-code-pro-nerd-font'
cask 'font-shure-tech-mono-nerd-font'
cask 'font-space-mono-nerd-font'
cask 'font-terminess-ttf-nerd-font'
cask 'font-tinos-nerd-font'
cask 'font-ubuntu-mono-nerd-font'
cask 'font-ubuntu-nerd-font'
cask 'font-victor-mono-nerd-font'
cask 'homebrew/cask-fonts/font-fontawesome' # Font Awesome

# Apps
cask '1password' unless system ".local/bin/installed '1Password Installer.app'" # 1Password
cask 'adobe-creative-cloud' unless system ".local/bin/installed 'Creative Cloud.app'" # Adobe Creative Cloud
cask 'aws-vpn-client' unless system ".local/bin/installed 'AWS VPN Client.app'" # AWS VPN
cask 'brave-browser' unless system ".local/bin/installed 'Brave Browser.app'" # Brave Browser
cask 'caffeine' unless system ".local/bin/installed Caffeine.app" # Caffeine
cask 'dash' unless system ".local/bin/installed Dash.app" # Dash
cask 'dbngin' unless system ".local/bin/installed DBngin.app"  # Database manager
cask 'docker' unless system ".local/bin/installed Docker.app" # Docker
cask 'flameshot' unless system ".local/bin/installed flameshot.app" # Screenshot
cask 'github' unless system ".local/bin/installed 'GitHub Desktop.app'" # Github Desktop
cask 'imageoptim' unless system ".local/bin/installed ImageOptim.app" # Optimize images # Rest client
cask 'iterm2' unless system ".local/bin/installed iTerm2.app" # iTerm2
cask 'numi' unless system ".local/bin/installed 'Numi.app'" # Calculator
cask 'plex' unless system ".local/bin/installed Plex.app" # Plex
cask 'slack' unless system ".local/bin/installed Slack.app" # Slack
cask 'spotify' unless system ".local/bin/installed Spotify.app" # Spotify
cask 'the-unarchiver' unless system ".local/bin/installed 'The Unarchiver.app'" # Unarchiver
cask 'visual-studio-code' unless system ".local/bin/installed 'Visual Studio Code.app'" # VSCode
cask 'zoom' unless system ".local/bin/installed 'zoom.us.app'" # Zoom
cask 'wireshark' unless system ".local/bin/installed Wireshark.app" # Wireshark

# Mac Apple Store
# https://github.com/mas-cli/mas/issues/498
# mas 'iBar-Menubar icon control tool', id: '-2146090692' # Menubar icon control
mas 'Alfred', id: 405843582 # Alfred
mas 'Boop', id: 1518425043 # Various developer tools
mas 'Clipboard Manager - PastePal', id: 1503446680 # Clipboard manager
mas 'ColorSlurp', id: 1287239339 # Color picker
mas 'Magnet', id: 441258766 # Window manager
mas 'MindNode - Mind Map & Outline', id: 1289197285 # Brain Map
mas 'Trello', id: 1278508951 # Trello
mas  "Noizio - Calm, Meditate, Sleep", id: 928871589 # White Noise

# VSCode extensions
vscode 'deerawan.vscode-dash' # Dash
vscode 'github.copilot' # Copilot
vscode 'github.copilot-chat' # Copilot chat
vscode 'golang.go' # Go
vscode 'johnpapa.vscode-peacock' # Peacock
vscode 'yoavbls.pretty-ts-errors' # Pretty TS errors
vscode 'ivhernandez.vscode-plist' # PList Editor
vscode 'britesnow.vscode-toggle-quotes' # Toggle quotes
vscode 'vscodevim.vim' # Vim
vscode 'sharashchandradesai.simple-scratch' # Scratch Pads
vscode 'ms-azuretools.vscode-docker' # Docker
vscode 'ms-vscode-remote.remote-containers' # Remote containers
vscode 'dbaeumer.vscode-eslint' # ESLint
vscode 'christian-kohler.npm-intellisense' # NPM Intellisense
vscode 'ms-kubernetes-tools.vscode-kubernetes-tools' # Kubernetes
vscode 'esbenp.prettier-vscode' # Prettier
vscode 'nguyenngoclong.asdf' # ASDF
vscode "vortizhe.simple-ruby-erb" # Ruby ERB
