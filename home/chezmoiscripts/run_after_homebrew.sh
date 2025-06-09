#!/bin/bash

# Installs Homebrew packages used on the system and generates completions for installed packages.
#
# Need to figure out a way to conditionally install stuff
# that I don't want to have on my work device.

# install apps
/opt/homebrew/bin/brew bundle install --upgrade --file=~/.config/homebrew/Brewfile

# generate integrations and completions below

# atuin
mkdir -p ~/.local/share/atuin/
/opt/homebrew/bin/atuin init nu > ~/.local/share/atuin/init.nu
/opt/homebrew/bin/atuin gen-completions --shell nushell > ~/.local/share/atuin/completions.nu

# carapace
mkdir -p ~/.local/share/carapace/
/opt/homebrew/bin/carapace _carapace nushell > ~/.local/share/carapace/init.nu

# just
mkdir -p ~/.local/share/just/
just --completions nushell > ~/.local/share/just/completions.nu

# mise
mkdir -p ~/.local/share/mise/
/opt/homebrew/bin/mise activate nu > ~/.local/share/mise/init.nu

# starship
mkdir -p ~/.local/share/starship/
/opt/homebrew/bin/starship init nu > ~/.local/share/starship/init.nu

# zoxide
mkdir -p ~/.local/share/zoxide/
/opt/homebrew/bin/zoxide init nushell > ~/.local/share/zoxide/init.nu
