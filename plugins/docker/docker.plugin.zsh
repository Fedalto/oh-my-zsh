alias d=docker

if which boot2docker >/dev/null 2>&1; then
  if [[ $(boot2docker status) == "running" ]]; then
    eval $(boot2docker shellinit 2>/dev/null)
  fi
fi
