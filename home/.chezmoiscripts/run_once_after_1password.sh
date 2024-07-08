#!/bin/bash

# Configures 1Password SSH agent settings.
# Source: https://developer.1password.com/docs/ssh/agent/compatibility/#configure-ssh_auth_sock-globally-for-every-client

# unload previously applied config
# launchctl unload -w ~/Library/LaunchAgents/com.1password.SSH_AUTH_SOCK.plist

# load config
launchctl load -w ~/Library/LaunchAgents/com.1password.SSH_AUTH_SOCK.plist
