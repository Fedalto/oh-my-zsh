alias j=jobs

if which ack-grep &>/dev/null; then
  alias ack=ack-grep
fi

alias su='su -'

alias time="/usr/bin/time" # Don't use shell built-in function
