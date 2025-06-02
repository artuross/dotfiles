#!/bin/bash

# Configures macOS Dock.

# enable auto-hide
defaults write com.apple.dock autohide -bool true

# remove the auto-hide delay
defaults write com.apple.dock autohide-delay -float 0

# remove the animation duration
defaults write com.apple.dock autohide-time-modifier -float 0

# make the Dock smaller (valid values: 16-128)
defaults write com.apple.dock tilesize -int 40

# preserve spaces order
defaults write com.apple.dock mru-spaces -bool false

# apply the changes
killall Dock
