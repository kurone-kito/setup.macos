# -*- mode: ruby -*-
# vim: set ft=ruby :

###########################################################################
### Collect information on the current environment.
def is_arm?
  !RUBY_PLATFORM.index("arm64e").nil?
end

###########################################################################
### Tap
tap 'homebrew/autoupdate'
tap 'homebrew/command-not-found'
tap 'aws/tap'

###########################################################################
### Dependencies

# Packages management
brew 'mas'
mas 'Xcode', id: 497799835

# Downloads
brew 'curl'
brew 'git'
brew 'git-lfs'
brew 'wget'

# Fonts
cask 'font-hackgen-nerd'
cask 'font-meslo-for-powerline'

# Shells
brew 'zsh'
brew 'zsh-completions'

# Programming
brew 'gawk'
brew 'gcc'
brew 'rust'

# Signature
brew 'unbound', restart_service: true
brew 'gnupg'
brew 'pinentry-mac'

# System
brew 'coreutils'
brew 'proctools'

###########################################################################
### No depended but high priorities

# Configuration tools
brew 'chezmoi'
brew 'mackup'

# Conversion for texts
brew 'jq'

# Development for Web
brew 'asdf'
brew 'mkcert'
brew 'nss'
cask 'firefox'

# Development: for Mobile apps
cask 'android-studio'
brew 'mono' unless is_arm? # ! x86_64?
cask 'unity-hub', greedy: true

# Shell
brew 'blacktop/tap/lporg'
cask 'powershell'

# Storages management
cask 'adobe-creative-cloud', greedy: true
cask 'omnipresence'
mas 'OneDrive', id: 823766827

# Tasks & Memos
mas 'OmniFocus 4', id: 1542143627

# Virtualizations
cask 'vagrant'
cask 'docker', greedy: true
brew 'whalebrew'
mas 'Parallels Desktop', id: 1085114709
cask 'parallels-virtualization-sdk'

###########################################################################
### Cask

# 3D
cask 'blender'
cask 'ultimaker-cura'
cask 'freecad'

# Audio & Broadcasting
cask 'aegisub', greedy: true
cask 'audio-hijack', greedy: true
cask 'izotope-product-portal', greedy: true
cask 'loopback', greedy: true
cask 'obs', greedy: true
cask 'restream-chat'
cask 'voicepeak'

# Authentication
cask 'keybase' unless is_arm? # Install from Mac App Store

# Benchmark
cask 'sensei'

# Development
cask 'alcom', greedy: true
cask 'figma'
cask 'figma-agent'
cask 'react-native-debugger'

# Devices
cask 'canon-mf-printer'
# Since it's troublesome to determine whether or not the Touch Bar is
# present, it's determined by whether or not the ARM64 arch is used.
cask 'haptic-touch-bar' unless is_arm?
cask 'karabiner-elements'
cask 'logitech-firmwareupdatetool'
cask 'logitech-g-hub'
cask 'logitech-gaming-software'
cask 'x-mirage'

# Documentations
cask 'chatgpt', greedy: true
cask 'claude'
cask 'manta'
cask 'wkhtmltopdf'

# Fonts
cask 'font-dosis'
cask 'font-exo-2'
cask 'font-hackgen'
cask 'font-lato'
cask 'font-meslo-lg-nerd-font'

# Games
cask 'minecraft', greedy: true
cask 'steam', greedy: true
cask 'steamcmd'

# Messaging
cask 'discord', greedy: true
cask 'microsoft-teams', greedy: true
cask 'zoom', greedy: true

# Remote tools
cask 'amazon-workspaces'
cask 'ngrok'
cask 'openvpn-connect'
cask 'switchhosts'
cask 'teamviewer'
cask 'vnc-viewer'
cask 'wireshark'

# Runtime
cask 'adoptopenjdk'

# Tasks & Memos
cask 'notion'

# Text editors
cask 'cursor', greedy: true
cask 'sublime-text'
cask 'visual-studio-code', greedy: true

# Virtualizations
cask 'dosbox-x-app'
cask 'virtualbox' unless is_arm? # ! x86_64?
cask 'virtualbox-extension-pack' unless is_arm? # ! x86_64?

# Web browsers
cask 'chromium' unless is_arm? # ! x86_64?
cask 'google-chrome', greedy: true
cask 'insomnia', greedy: true
cask 'tor-browser'

###########################################################################
### Brew

# Benchmark
brew 'cloc'
brew 'fastfetch'
brew 'gotop'
brew 'htop'

# Conversion for binaries
brew 'atomicparsley'
brew 'ffmpeg'
brew 'imagemagick'
brew 'p7zip'
brew 'vips'

# Conversion for texts
brew 'groff'
brew 'nkf'

# Database
brew 'mysql'
brew 'sqlite'

# Desktop
brew 'terminal-notifier'

# Development
brew 'antlr'
brew 'cmake'
brew 'cmake-docs'
brew 'lv2'
brew 'pict'
brew 'python'
brew 'shellcheck'
brew 'vrc-get'

# Documentations
brew 'mdp'
brew 'pandoc'

# Files
brew 'bat'
brew 'broot'
brew 'fzf'
brew 'rename'
brew 'rsync'
brew 'subversion'

# Games & Jokes
brew 'gti'
brew 'nyancat'
brew 'sl'

# GitHub
brew 'gh'
brew 'gist'
brew 'git-delta'
brew 'git-gui'
brew 'act'

# Remote tools
brew 'awscli'
brew 'aws-nuke'
brew 'aws-sam-cli'
brew 'inetutils' # includes the telnet
brew 'minicom'
brew 'mosh'
brew 'nmap'
brew 'openvpn'
brew 'scrcpy'
brew 'tor'

# Shell
brew 'bats-core'
brew 'term'
brew 'thefuck'
brew 'tmux'

# Text Browsing
brew 'links'
brew 'cheat'

# Text editors
brew 'nano'
brew 'neovim'
brew 'vim'

###########################################################################
### Mas

# Benchmark
mas 'Cinebench', id: 1438772273
mas 'Disk Speed Test', id: 1480068668

# Development
mas 'Developer', id: 640199958
mas 'TestFlight', id: 899247664

# DTM / DTV
mas 'GarageBand', id: 682658836
mas 'iMovie', id: 408981434
mas 'Logic Pro', id: 634148309

# Messaging / Social
mas 'LINE', id: 539883307
mas 'Messenger', id: 1480068668
mas 'Slack', id: 803453959

# Office
mas 'Keynote', id: 409183694
mas 'Microsoft Excel', id: 462058435
mas 'Microsoft OneNote', id: 784801555
mas 'Microsoft PowerPoint', id: 462062816
mas 'Microsoft To Do', id: 1274495053
mas 'Microsoft Word', id: 462054704
mas 'Numbers', id: 409203825
mas 'Pages', id: 409201541

# Others
mas 'Amazon Prime Video', id: 545519333
mas 'Grammarly: AI Writing Support', id: 1462114288
mas 'Grammarly for Safari', id: 1462114288
mas 'Human Resource Machine', id: 1005728312
mas 'Kindle', id: 405399194
mas 'Microsoft Remote Desktop', id: 1295203466
mas 'Remote Desktop', id: 409907375
