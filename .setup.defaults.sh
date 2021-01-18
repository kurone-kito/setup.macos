#!/bin/sh
# vim: set ft=sh :

set -eu
cd $(dirname $0)

# See: https://macos-defaults.com/
printf '\033[2;36m%s\033[m\n' 'Setup the macOS defaults.'
# Apps ====================================================================
# TextEdit
defaults write com.apple.TextEdit RichText -bool false
killall TextEdit 2> /dev/null || true
# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 6
killall "Activity Monitor" 2> /dev/null || true

# Dock ====================================================================
defaults write com.apple.dock mineffect -string suck
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

killall Dock 2> /dev/null || true

# Finder ==================================================================
# Avoid creating the “.DS_Store” files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# Avoid creating the “.DS_Store” on USB volumes
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
# Show all files extensions
defaults write -g AppleShowAllExtensions -bool true
# Expand the save panel in default
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true

killall Finder 2> /dev/null || true

# Keyboard ================================================================
defaults write -g InitialKeyRepeat -int 25
defaults write -g KeyRepeat -int 2

killall Finder 2> /dev/null || true

# Menubar =================================================================
defaults write com.apple.menuextra.clock FlashDateSeparators -bool true

killall SystemUIServer 2> /dev/null || true
