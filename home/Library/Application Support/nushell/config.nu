# environment variables: PATH
$env.Path = ($env.Path | prepend '/opt/homebrew/bin')
# disable welcome message
$env.config.show_banner = false
