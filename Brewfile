# -*- mode: ruby -*-
# vim: set ft=ruby :

###########################################################################
### Collect information on the current environment.
def is_m1?
 !RUBY_PLATFORM.index("arm64e").nil?
end

###########################################################################
### Tap
tap 'homebrew/autoupdate'
tap 'homebrew/bundle'
tap 'homebrew/cask'
tap 'homebrew/cask-drivers'
tap 'homebrew/cask-fonts'
tap 'homebrew/cask-versions'
tap 'homebrew/command-not-found'
tap 'homebrew/core'
tap 'aws/tap'
tap 'blacktop/tap'

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

# Conversion for texts
brew 'jq'

# Developments for Web
brew 'asdf'
brew 'mkcert'
brew 'nss'
cask 'firefox-esr'

# Development: for Mobile apps
cask 'unity-hub'

# Shell
brew 'blacktop/tap/lporg'

# Storages management
cask 'adobe-creative-cloud'
cask 'dropbox'
cask 'omnipresence'

# Virtualizations
cask 'vagrant'
cask 'docker', greedy: true

mas 'OmniFocus', id: 1474135619
mas 'OneDrive', id: 823766827

###########################################################################
### Cask

# 3D
cask 'blender'
cask 'freecad'

# Audio & Broadcasting
cask 'audio-hijack', greedy: true
cask 'loopback', greedy: true
cask 'obs'
cask 'restream-chat'
cask 'sonic-visualiser'

# Benchmark
cask 'macs-fan-control'

# Desktop
cask 'avibrazil-rdm'

# Development: for Mobile apps
cask 'android-studio'
cask 'dotnet-sdk'
cask 'react-native-debugger'

# Devices
cask 'canon-mf-printer'
cask 'drobo-dashboard'
# cask 'haptic-touch-bar'
cask 'logitech-firmwareupdatetool'
cask 'logitech-g-hub'
cask 'logitech-gaming-software'

# Documentations
cask 'manta'
cask 'wkhtmltopdf'

# Files
cask 'raspberry-pi-imager'

# Fonts
cask 'font-hackgen'
cask 'font-ibm-plex'
cask 'font-lato'
cask 'font-meslo-lg-nerd-font'

# Games
cask 'minecraft'
cask 'steam'
cask 'steamcmd'
cask 'stepmania'

# Messaging
cask 'discord'
cask 'gitter'
cask 'google-chat'
cask 'mattermost'
cask 'keybase' unless is_m1? # Install from Mac App Store
cask 'skype'
cask 'zoom'

# Remote tools
cask 'ngrok'
cask 'teamviewer'
cask 'vnc-viewer'

# Runtime
cask 'adoptopenjdk'

# Shell
cask 'powershell'

# Tasks & Memos
cask 'boost-note'
cask 'grammarly'
cask 'notion'

# Text editors
cask 'atom'
cask 'sublime-text'
cask 'visual-studio-code', greedy: true

# Virtualizations
cask 'dosbox-x'
cask 'parallels', greedy: true
cask 'parallels-virtualization-sdk'
cask 'virtualbox' unless is_m1? # ! x86_64?
cask 'virtualbox-extension-pack' unless is_m1? # ! x86_64?

# Web browsers
cask 'chromium', greedy: true
cask 'google-chrome', greedy: true
cask 'insomnia', greedy: true
cask 'tor-browser'

###########################################################################
### Brew

# Benchmark
brew 'cloc'

# Conversion for binaries
brew 'ffmpeg'
brew 'imagemagick'
brew 'p7zip'
brew 'vips'

# Conversion for texts
brew 'groff'
brew 'nkf'
brew 'textql'

# Database
brew 'sqlite'

# Desktop
brew 'terminal-notifier'

# Development
brew 'antlr'
brew 'cmake'
brew 'lv2'
brew 'mono' unless is_m1? # ! x86_64?
brew 'pict'
brew 'shellcheck'

# Documentations
brew 'graphviz'
brew 'mdp'
brew 'pandoc'
brew 'plantuml'

# Files
brew 'bat'
brew 'broot'
brew 'exa'
brew 'fzf'
brew 'rename'
brew 'rsync'
brew 'subversion'

# Games & Jokes
brew 'nyancat'
brew 'sl'

# GitHub
brew 'gist'
brew 'git-delta'
brew 'gitlab-runner', restart_service: true
brew 'hub'
brew 'nektos/tap/act'

# Remote tools
brew 'awscli'
brew 'aws-nuke'
brew 'aws-sam-cli'
brew 'inetutils' # includes the telnet
brew 'mmctl'
brew 'mosh'
brew 'openvpn'
brew 'scrcpy'
brew 'tor'

# Shell
brew 'term'
brew 'thefuck'
brew 'tmux'

# System
brew 'gotop'
brew 'htop'
brew 'mackup'

# Text Browsing
brew 'links'
brew 'cheat'
brew 'tldr'

# Text editors
brew 'nano'
brew 'vim'

###########################################################################
### Mas

mas 'Cinebench', id: 1438772273
mas 'Developer', id: 640199958
mas 'Disk Speed Test', id: 1480068668
mas 'GarageBand', id: 682658836
mas 'GFXBench Metal', id: 1044629456
mas 'Grammarly for Safari', id: 1462114288
mas 'Human Resource Machine', id: 1005728312
mas 'iMovie', id: 408981434
mas 'Keynote', id: 409183694
mas 'Kindle', id: 405399194
mas 'LINE', id: 539883307
mas 'Messenger', id: 1480068668
mas 'Microsoft Excel', id: 462058435
mas 'Microsoft OneNote', id: 784801555
mas 'Microsoft PowerPoint', id: 462062816
mas 'Microsoft Remote Desktop', id: 1295203466
mas 'Microsoft To Do', id: 1274495053
mas 'Microsoft Word', id: 462054704
mas 'Numbers', id: 409203825
mas 'Pages', id: 409201541
mas 'Remote Desktop', id: 409907375
mas 'Slack', id: 803453959
mas 'TestFlight', id: 899247664
mas 'Twitter', id: 1482454543
mas 'virtualOS', id: 1614659226
