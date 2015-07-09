# ls colors
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Enable ls colors
if [ "$DISABLE_LS_COLORS" != "true" ]
then
  # Find the option for using colors in ls, depending on the version: Linux or BSD
  ls --color -d . &>/dev/null 2>&1 && LS_COLOR_OPTION='--color=tty' || LS_COLOR_OPTION='-G'
fi

alias ls="ls $LS_COLOR_OPTION --dereference-command-line --human-readable --indicator-style=classify"

# Typo?
alias sl=ls
alias la=ls
alias l=ls
