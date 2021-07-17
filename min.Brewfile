# -*- mode: ruby -*-
# vim: set ft=ruby :

def is_m1?
  !RUBY_PLATFORM.index("arm64e").nil?
end

tap 'homebrew/bundle'
tap 'homebrew/cask'
tap 'homebrew/cask-drivers'
tap 'homebrew/cask-fonts'
tap 'homebrew/cask-versions'
tap 'homebrew/core'
tap 'nektos/tap'

# Audio & Broadcasting
cask 'audio-hijack'
cask 'loopback'
brew 'lv2'
# cask 'obs'

# Binaries
brew 'ffmpeg'
brew 'imagemagick'
# cask 'raspberry-pi-imager'
brew 'vips'

# Cloud storages
# cask 'adobe-creative-cloud'
# cask 'dropbox'
cask 'omnipresence'

# Development
brew 'asdf'
brew 'gawk'
brew 'gcc'
brew 'jq'
brew 'pict'
brew 'shellcheck'
brew 'textql'

# Development: IDE
brew 'nano'
brew 'vim'
cask 'atom'
cask 'sublime-text'
cask 'visual-studio-code', greedy: true

# Development: for Mobile apps
# cask 'android-studio'
# cask 'blender'
cask 'react-native-debugger'
# cask 'unity-hub'

# Development: for Web apps
brew 'awscli'
brew 'mkcert'
brew 'nss'
cask 'ngrok'

# Documentations
brew 'graphviz'
brew 'mdp'
brew 'pandoc'
brew 'plantuml'
cask 'manta'
cask 'wkhtmltopdf'

# Devices
brew 'scrcpy'
# cask 'canon-mf-printer'
# cask 'drobo-dashboard'
# cask 'logitech-firmwareupdatetool'
# cask 'logitech-g-hub'
# cask 'logitech-gaming-software'
cask 'haptic-touch-bar'

# Files
brew 'bat'
brew 'broot'
brew 'fzf'
brew 'p7zip'
brew 'rename'
brew 'rsync'
brew 'subversion'

# Fonts
cask 'font-hackgen'
cask 'font-hackgen-nerd'
cask 'font-ibm-plex'
cask 'font-lato'
cask 'font-meslo-for-powerline'
cask 'font-meslo-lg-nerd-font'

# Games
# cask 'minecraft'
# cask 'steam'
cask 'steamcmd'
# cask 'stepmania'

# GitHub
brew 'git'
brew 'gist'
brew 'git-delta'
brew 'git-lfs'
brew 'hub'
cask 'act'

# Messaging
brew 'mmctl'
# cask 'discord'
cask 'gitter'
cask 'mattermost'
cask 'keybase'
# cask 'skype'
cask 'zoom'

# Miscs
brew 'mas'
brew 'nyancat'
brew 'sl'

# Remote tools
brew 'curl'
brew 'inetutils' # includes the telnet
brew 'wget'
cask 'vnc-viewer'

# Runtime
cask 'adoptopenjdk'
cask 'dotnet'

# Shell
cask 'powershell'
brew 'terminal-notifier'
brew 'term'
brew 'thefuck'
brew 'zsh-completions'

# Signature
brew 'unbound', restart_service: true
brew 'gnupg'
brew 'pinentry-mac'

# System
brew 'gotop'
brew 'mackup'
brew 'proctools'

# Tasks & Memos
cask 'boost-note'
cask 'grammarly'
cask 'notion'

# Text Browsing
brew 'cheat'
brew 'links'
brew 'tldr'

# Virtualizations
cask 'docker', greedy: true
# cask 'parallels', greedy: true
# cask 'parallels-virtualization-sdk'
cask 'vagrant'
cask 'virtualbox' unless is_m1? # ! x86_64?
cask 'virtualbox-extension-pack' unless is_m1? # ! x86_64?

# Web browsers
cask 'chromium'
cask 'firefox-esr'
cask 'google-chrome', greedy: true

# mas
mas 'Cinebench', id: 1438772273
mas 'Developer', id: 640199958
mas 'Disk Speed Test', id: 1480068668
# mas 'GarageBand', id: 682658836
mas "GFXBench Metal", id: 1044629456
mas 'Grammarly for Safari', id: 1462114288
# mas 'Human Resource Machine', id: 1005728312
# mas 'iMovie', id: 408981434
mas 'Keynote', id: 409183694
# mas 'Kindle', id: 405399194
# mas 'LINE', id: 539883307
# mas 'Messenger', id: 1480068668
# mas 'Microsoft Excel', id: 462058435
# mas 'Microsoft OneNote', id: 784801555
# mas 'Microsoft PowerPoint', id: 462062816
# mas 'Microsoft Remote Desktop', id: 1295203466
# mas "Microsoft To Do", id: 1274495053
# mas 'Microsoft Word', id: 462054704
mas 'Numbers', id: 409203825
mas 'OmniFocus', id: 1474135619
# mas 'OneDrive', id: 823766827
mas 'Pages', id: 409201541
# mas 'Remote Desktop', id: 409907375
mas 'Slack', id: 803453959
# mas "Twitter", id: 1482454543
mas 'Xcode', id: 497799835
