#!/bin/bash

# Configures 1Password SSH agent settings.
# Source: https://developer.1password.com/docs/ssh/agent/compatibility/#configure-ssh_auth_sock-globally-for-every-client

# load config
launchctl load -w ~/Library/LaunchAgents/com.1password.SSH_AUTH_SOCK.plist
