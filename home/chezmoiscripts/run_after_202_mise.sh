#!/bin/bash

# Installs Mise tools from HOME directory.

if [[ ! -f ~/.config/mise/mise.lock ]]; then
    touch ~/.config/mise/mise.lock
fi

/opt/homebrew/bin/mise install
