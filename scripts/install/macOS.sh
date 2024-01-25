#!/bin/sh

# Configures macOS settings.
# See https://macos-defaults.com/ for more documented settings.

# Finder -> Settings
# --------------------------------------------------------------------------------

# Delete items from the Trash after 30 days
defaults write com.apple.finder FXRemoveOldTrashItems -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true


# System Settings -> Desktop & Dock
# --------------------------------------------------------------------------------

# set dock animation delay to 0ms
defaults write com.apple.dock autohide-delay -float 0

# set dock animation duration to 500ms
defaults write com.apple.dock autohide-time-modifier -float 0.5

# scroll on an Application icon in Dock to show all windows of that application
defaults write com.apple.dock scroll-to-open -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Group windows by application
defaults write com.apple.dock expose-group-apps -bool true

# Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true


# System Settings -> Desktop & Dock
# --------------------------------------------------------------------------------

# Change Keyboard Type -> ANSI
# sets keyboard layout to ANSI for ALL known keyboards
value=`defaults read /Library/Preferences/com.apple.keyboardtype.plist keyboardtype | sd '= [0-9]+;' '= 40;'`
sudo defaults write /Library/Preferences/com.apple.keyboardtype.plist keyboardtype $value

# Keyboard Shortcuts -> Function Keys -> Use F1, F2, etc. keys as standard function keys
defaults write -g com.apple.keyboard.fnState -bool true
