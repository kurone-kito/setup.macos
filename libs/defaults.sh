#!/bin/sh

set -eu
cd "$(cd "$(dirname "$0")"; pwd)"

. lib.sh

log_info 'Setup the macOS defaults.'

osascript -e 'tell application "System Preferences" to quit'

# See: https://macos-defaults.com/

# Activity Monitor ========================================================
# Visualize CPU usage in the Dock icon.
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

# Always display folders at the top.
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true

killall Finder 2> /dev/null || true

# Font Book ===============================================================
defaults write com.apple.FontBook FBResolveByMovingToTrashKey -bool true

killall 'Font Book' 2> /dev/null || true

# Dock & Mission Control ==================================================
# Enable spring loading for all Dock items.
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Group windows by application on Mission Control.
defaults write com.apple.dock expose-group-apps -bool true

# Enable magnification on mouse-over.
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 128

# Minimize animation effect.
defaults write com.apple.dock mineffect -string suck

killall Dock 2> /dev/null || true

# Finder ==================================================================
# Avoid creating the “.DS_Store” files on network volumes.
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Avoid creating the “.DS_Store” on USB volumes.
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Switch the default Finder view style to Column view.
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Remove item from trash after 30 days.
defaults write com.apple.finder FXRemoveOldTrashItems -bool true

# Show the HOME folder on first by the new Finder windows.
defaults write com.apple.finder NewWindowTarget -string 'PfHm'
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

# Always display folders at the top.
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Show path bar in the bottom of the Finder windows.
defaults write com.apple.finder ShowPathbar -bool true

# Show folder icon before title in the title bar.
defaults write com.apple.universalaccess showWindowTitlebarIcons -bool true

# Show all files extensions.
defaults write -g AppleShowAllExtensions -bool true

# Expand the save panel in default.
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true

# Set sidebar icon size.
defaults write -g NSTableViewDefaultSizeMode -int 3

killall Finder 2> /dev/null || true

# iWorks ==================================================================
defaults write com.apple.iWork.Keynote KNAnimationMotionBlurEnabled -bool true
defaults write com.apple.iWork.Keynote TSDMovieCompatibilityOptimizeForiOSOnInsert -bool true
defaults write com.apple.iWork.Numbers TSDMovieCompatibilityOptimizeForiOSOnInsert -bool true
defaults write com.apple.iWork.Pages TSDMovieCompatibilityOptimizeForiOSOnInsert -bool true

killall Keynote 2> /dev/null || true
killall Numbers 2> /dev/null || true
killall Pages 2> /dev/null || true

# Keyboard ================================================================
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

defaults write com.apple.inputmethod.Kotoeri JIMPrefLiveConversionKey -bool false

killall Finder 2> /dev/null || true

# Menubar =================================================================
defaults write com.apple.controlcenter 'NSStatusItem Visible Bluetooth' -bool false
defaults write com.apple.controlcenter 'NSStatusItem Visible WiFi' -bool false

# The time separator flashes every second.
defaults write com.apple.menuextra.clock FlashDateSeparators -bool true

defaults write com.apple.menuextra.clock Show24Hour -bool true
defaults write com.apple.Siri StatusMenuVisible -bool false

killall SystemUIServer 2> /dev/null || true

# Mouse / Trackpad ========================================================
defaults write com.apple.AppleMultitouchMouse MouseButtonMode -string TwoButton

# Click weight to firm.
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 2

defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode -string TwoButton

killall Finder 2> /dev/null || true
killall SystemUIServer 2> /dev/null || true

# Screen saver ============================================================
defaults -currentHost write com.apple.screensaver idleTime -int 0
defaults -currentHost write com.apple.screensaver showClock -bool true

killall cfprefsd 2> /dev/null || true

# TextEdit ================================================================
defaults write com.apple.TextEdit CheckGrammarWithSpelling -bool true
defaults write com.apple.TextEdit RichText -bool false

# Using XHTML 1.0 Strict.
defaults write com.apple.TextEdit UseTransitionalDocType -bool false
defaults write com.apple.TextEdit UseXHTMLDocType -bool true

killall TextEdit 2> /dev/null || true

# Network =================================================================
add_nameserver() {
  grep -qE "^${1}$" "${2}" || echo "${1}" | sudo tee -a "${2}" > /dev/null
}

TARGET=/var/run/resolv.conf
sudo sed -i -n '/nameserver/d' "${TARGET}"
add_nameserver 'nameserver 8.8.8.8' "${TARGET}"
add_nameserver 'nameserver 8.8.4.4' "${TARGET}"

# Safari ==================================================================
defaults write com.apple.Safari DownloadsClearingPolicy -int 1
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari ShowStandaloneTabBar -bool false
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari 'WebKitPreferences.developerExtrasEnabled' -bool true
defaults write com.apple.Safari.SandboxBroker ShowDevelopMenu -bool true

killall Safari 2> /dev/null || true

# Sounds ==================================================================
defaults write -g com.apple.sound.beep.feedback -bool true

killall Finder 2> /dev/null || true
killall SystemUIServer 2> /dev/null || true
