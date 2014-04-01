if [ -z "$TMUX" ]; then
  if [ ! -z "$SSH_TTY" ]; then
    if [ -z "$SSH_AUTH_SOCK" ]; then
      export SSH_AUTH_SOCK="/tmp/ssh-agent-$USER-screen"
    fi
    if [ -S "$SSH_AUTH_SOCK" ]; then
      ln -sf "$SSH_AUTH_SOCK" "/tmp/ssh-agent-$USER-screen"
    fi
  fi
else
  export SSH_AUTH_SOCK="/tmp/ssh-agent-$USER-screen"
fi
