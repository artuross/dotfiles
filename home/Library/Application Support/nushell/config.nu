# environment variables: PATH
$env.Path = ($env.Path | prepend '/opt/homebrew/bin')

# sets editor to Helix
$env.config.buffer_editor = "hx"

# disable welcome message
$env.config.show_banner = false

# load integrations
source ~/.local/share/atuin/init.nu

# load completions
source ~/.local/share/atuin/completions.nu
