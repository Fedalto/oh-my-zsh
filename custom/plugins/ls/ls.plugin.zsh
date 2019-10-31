# Load the original plugin
source $ZSH/plugins/ls/ls.plugin.zsh

if $(which exa >/dev/null 2>&1); then
  alias l=exa
  alias ls=exa
  alias sl=exa
fi
