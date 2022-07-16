#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. .lib.sh

log_info 'Setup the macOS defaults.'

osascript -e 'tell application "System Preferences" to quit'

# See: https://macos-defaults.com/

# Activity Monitor ========================================================
# Visualize CPU usage in the Dock icon
defaults write com.apple.ActivityMonitor IconType -int 6

killall 'Activity Monitor' 2> /dev/null || true

# Desktop =================================================================
FINDER_PLIST="${HOME}/Library/Preferences/com.apple.finder.plist"

/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:GroupBy Kind' "${FINDER_PLIST}" || \
/usr/libexec/PlistBuddy -c 'Add :DesktopViewSettings:GroupBy string Kind' "${FINDER_PLIST}"

/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:arrangeBy dateAdded' "${FINDER_PLIST}" || \
/usr/libexec/PlistBuddy -c 'Add :DesktopViewSettings:IconViewSettings:arrangeBy string dateAdded' "${FINDER_PLIST}"

/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:gridSpacing 100' "${FINDER_PLIST}" || \
/usr/libexec/PlistBuddy -c 'Add :DesktopViewSettings:IconViewSettings:gridSpacing int 100' "${FINDER_PLIST}"

/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:iconSize 128' "${FINDER_PLIST}" || \
/usr/libexec/PlistBuddy -c 'Add :DesktopViewSettings:IconViewSettings:iconSize int 128' "${FINDER_PLIST}"

/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:showItemInfo true' "${FINDER_PLIST}" || \
/usr/libexec/PlistBuddy -c 'Add :DesktopViewSettings:IconViewSettings:showItemInfo bool true' "${FINDER_PLIST}"

/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:showItemInfo true' "${FINDER_PLIST}" || \
/usr/libexec/PlistBuddy -c 'Add :DesktopViewSettings:IconViewSettings:showItemInfo bool true' "${FINDER_PLIST}"

killall Finder 2> /dev/null || true

# Dock & Mission Control ==================================================
# Enable spring loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Mission Control
defaults write com.apple.dock expose-group-apps -bool true

# Enable magnification on mouse-over
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 128

# Minimize animation effect
defaults write com.apple.dock mineffect -string suck

killall Dock 2> /dev/null || true

# Finder ==================================================================
# Avoid creating the “.DS_Store” files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Avoid creating the “.DS_Store” on USB volumes
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Switch the default Finder view style to Column view
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Show all files extensions
defaults write -g AppleShowAllExtensions -bool true

# Expand the save panel in default
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true

# Set sidebar icon size
defaults write -g NSTableViewDefaultSizeMode -int 3

killall Finder 2> /dev/null || true

# Keyboard ================================================================
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

killall Finder 2> /dev/null || true

# Menubar =================================================================
defaults write com.apple.menuextra.clock FlashDateSeparators -bool true

killall SystemUIServer 2> /dev/null || true

# Screen saver ============================================================
defaults -currentHost write com.apple.screensaver idleTime -int 0
defaults -currentHost write com.apple.screensaver showClock -bool true

killall cfprefsd 2> /dev/null || true

# TextEdit=================================================================
defaults write com.apple.TextEdit CheckGrammarWithSpelling -bool true
defaults write com.apple.TextEdit RichText -bool false

# Using XHTML 1.0 Strict
defaults write com.apple.TextEdit UseTransitionalDocType -bool false
defaults write com.apple.TextEdit UseXHTMLDocType -bool true

killall TextEdit 2> /dev/null || true

# Network==================================================================
add_nameserver() {
  TARGET=/var/run/resolv.conf
  grep -qE "^${1}$" "${TARGET}" || sudo echo "${1}" | sudo tee -a "${TARGET}" > /dev/null
}

sudo sed -i -n '/nameserver/d' /var/run/resolv.conf
add_nameserver 'nameserver 8.8.8.8' /var/run/resolv.conf
add_nameserver 'nameserver 8.8.4.4' /var/run/resolv.conf
