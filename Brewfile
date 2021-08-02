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
tap 'nektos/tap'

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

# Programming
brew 'asdf'

# Developments for Web
brew 'mkcert'
brew 'nss'
cask 'firefox-esr'

# Virtualizations
cask 'vagrant'
cask 'docker', greedy: true

mas 'OmniFocus', id: 1474135619
mas 'OneDrive', id: 823766827

###########################################################################
### Brew

# Conversion for binaries
brew 'ffmpeg'
brew 'imagemagick'
brew 'p7zip'
brew 'vips'

# Conversion for texts
brew 'jq'
brew 'textql'

# Development
brew 'lv2'
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
brew 'hub'
brew 'act'

# Remote tools
brew 'awscli'
brew 'inetutils' # includes the telnet
brew 'mmctl'
brew 'mosh'
brew 'scrcpy'

# Shell
brew 'terminal-notifier'
brew 'term'
brew 'thefuck'

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
### Cask

# Audio & Broadcasting
cask 'audio-hijack'
cask 'loopback'
cask 'obs'

# Development: for Mobile apps
cask 'android-studio'
cask 'blender'
cask 'react-native-debugger'
cask 'unity-hub'

# Documentations
cask 'manta'
cask 'wkhtmltopdf'

# Devices
cask 'canon-mf-printer'
cask 'drobo-dashboard'
cask 'logitech-firmwareupdatetool'
cask 'logitech-g-hub'
cask 'logitech-gaming-software'
cask 'haptic-touch-bar'

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

# Imager & Storages management
cask 'adobe-creative-cloud'
cask 'dropbox'
cask 'omnipresence'
cask 'raspberry-pi-imager'

# Messaging
cask 'discord'
cask 'gitter'
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
cask 'dotnet'

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
cask 'parallels', greedy: true
cask 'parallels-virtualization-sdk'
cask 'virtualbox' unless is_m1? # ! x86_64?
cask 'virtualbox-extension-pack' unless is_m1? # ! x86_64?

# Web browsers
cask 'chromium'
cask 'google-chrome', greedy: true

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
mas 'Twitter', id: 1482454543
