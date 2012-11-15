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
# zstyle ':vcs_info:git:*' check-for-changes true

# Set the formats
zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f %F{6}%u%c%f '
zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f %F{6}%u%c%f '

RPROMPT='${vcs_info_msg_0_}'
