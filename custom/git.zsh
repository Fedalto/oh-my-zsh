# Load vcs_info
autoload -Uz vcs_info

# Call vcs_info before each prompt
autoload -U add-zsh-hook
add-zsh-hook precmd vcs_info

# Enable only some VCS backends
# Note: run "vcs_info_printsys" to see what's enable/disable
zstyle ':vcs_info:*' enable git hg bzr svn


# check for changes in the git repository
# can be slow, comment it out if you encounter delays
zstyle ':vcs_info:git:*' check-for-changes true

RPROMPT='${vcs_info_msg_0_}'
