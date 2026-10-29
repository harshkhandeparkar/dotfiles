typeset -U path PATH
path=(~/bin $path)
path=($HOME/.cargo/bin $path)
export PATH

# VPN NetworkManager connection name
export VPN_CONN_NAME=shadow

# Aliases
source ~/.zshaliases

# Go bin
path=($HOME/go/bin $path)
