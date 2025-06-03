#!/bin/bash

# Configures macOS Dock.
# More: https://macos-defaults.com/

# always open everything in Finder's list view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# apply the changes
killall Finder
