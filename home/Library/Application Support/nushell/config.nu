# environment variables: PATH
$env.Path = ($env.Path | prepend '/opt/homebrew/bin')

# sets editor to Helix
$env.config.buffer_editor = "hx"

# disable welcome message
$env.config.show_banner = false
