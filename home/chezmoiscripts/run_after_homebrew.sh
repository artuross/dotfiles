#!/bin/bash

# Installs Homebrew packages used on the system.
#
# Need to figure out a way to conditionally install stuff
# that I don't want to have on my work device.

brew bundle install --upgrade --file=~/.config/homebrew/Brewfile
