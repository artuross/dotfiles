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
/opt/homebrew/bin/atuin init zsh > ~/.local/share/atuin/init.zsh
/opt/homebrew/bin/atuin gen-completions --shell nushell > ~/.local/share/atuin/completions.nu
/opt/homebrew/bin/atuin gen-completions --shell zsh > ~/.local/share/atuin/completions.zsh

# carapace
mkdir -p ~/.local/share/carapace/
/opt/homebrew/bin/carapace _carapace nushell > ~/.local/share/carapace/init.nu
/opt/homebrew/bin/carapace _carapace zsh > ~/.local/share/carapace/init.zsh

# jj
mkdir -p ~/.local/share/jj/
/opt/homebrew/bin/jj util completion nushell > ~/.local/share/jj/completions.nu
/opt/homebrew/bin/jj util completion zsh > ~/.local/share/jj/completions.zsh

# just
mkdir -p ~/.local/share/just/
/opt/homebrew/bin/just --completions nushell > ~/.local/share/just/completions.nu
/opt/homebrew/bin/just --completions zsh > ~/.local/share/just/completions.zsh

# mise
mkdir -p ~/.local/share/mise/
/opt/homebrew/bin/mise activate nu > ~/.local/share/mise/init.nu
/opt/homebrew/bin/mise activate zsh > ~/.local/share/mise/init.zsh

# starship
mkdir -p ~/.local/share/starship/
/opt/homebrew/bin/starship init nu > ~/.local/share/starship/init.nu
/opt/homebrew/bin/starship init zsh > ~/.local/share/starship/init.zsh

# xh
mkdir -p ~/.local/share/xh/
/opt/homebrew/bin/xh --generate complete-nushell > ~/.local/share/xh/completions.nu
/opt/homebrew/bin/xh --generate complete-zsh > ~/.local/share/xh/completions.zsh

# zoxide
mkdir -p ~/.local/share/zoxide/
/opt/homebrew/bin/zoxide init nushell > ~/.local/share/zoxide/init.nu
/opt/homebrew/bin/zoxide init zsh > ~/.local/share/zoxide/init.zsh
