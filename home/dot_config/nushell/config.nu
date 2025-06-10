# environment variables: PATH
$env.Path = ($env.Path | prepend '/opt/homebrew/bin')

# environment variables: enables completion from ZSH
# TODO: need to figure out why some completions are not loaded
$env.CARAPACE_BRIDGES = 'zsh'
$env.CARAPACE_EXCLUDES = 'terraform'

# sets editor to Helix
$env.config.buffer_editor = "hx"

# configure direnv hook
$env.config.hooks.env_change.PWD = [(source ~/.config/direnv/hook.nu)]

# disable welcome message
$env.config.show_banner = false

# set aliases
alias g = git
alias k = kubectl
alias t = talosctl

alias ll = eza --long --all
alias ls = eza

# load integrations
source ~/.local/share/atuin/init.nu
source ~/.local/share/carapace/init.nu
source ~/.local/share/mise/init.nu
source ~/.local/share/starship/init.nu
source ~/.local/share/zoxide/init.nu

# load completions
source ~/.config/zoxide/completions.nu
source ~/.local/share/atuin/completions.nu
# source ~/.local/share/just/completions.nu # carapace has better completions
source ~/.local/share/xh/completions.nu
