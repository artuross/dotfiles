#!/bin/bash

# Installs asdf plugins and installs versions specified in .tool-versions.
# Triggers on every `chezmoi apply`.
#
# TODO: trigger only when .tool-versions changes.

asdf plugin add bun https://github.com/cometkim/asdf-bun
asdf plugin add chezmoi https://github.com/joke/asdf-chezmoi.git
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

asdf install
