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
# Carapace v1.3.2 / nushell v0.105 compat patch. Waiting for new carapace releaseAdd commentMore actions
# See carapace-sh/carapace-bin#2830
/opt/homebrew/bin/carapace _carapace nushell | /opt/homebrew/bin/sd -s 'default $carapace_completer completer' 'default { $carapace_completer } completer' > ~/.local/share/carapace/init.nu

# jj
mkdir -p ~/.local/share/jj/
/opt/homebrew/bin/jj util completion nushell > ~/.local/share/jj/completions.nu

# just
mkdir -p ~/.local/share/just/
/opt/homebrew/bin/just --completions nushell > ~/.local/share/just/completions.nu

# mise
mkdir -p ~/.local/share/mise/
/opt/homebrew/bin/mise activate nu > ~/.local/share/mise/init.nu

# starship
mkdir -p ~/.local/share/starship/
/opt/homebrew/bin/starship init nu > ~/.local/share/starship/init.nu

# xh
mkdir -p ~/.local/share/xh/
/opt/homebrew/bin/xh --generate complete-nushell > ~/.local/share/xh/completions.nu

# zoxide
mkdir -p ~/.local/share/zoxide/
/opt/homebrew/bin/zoxide init nushell > ~/.local/share/zoxide/init.nu
