# Remove / . - from default.
export WORDCHARS='*?_[]~=&;!#$%^(){}<>'

export EDITOR='vim'
export VISUAL=view

export PAGER="less -R"

export LC_CTYPE=$LANG

# PATH
if [ -d ~/bin ]; then
    PATH=$PATH:~/bin
fi

if [ -d /usr/local/bin ]; then
    PATH=/usr/local/bin:$PATH
fi

if [ -d ~/.local/bin ]; then
    PATH=$PATH:~/.local/bin
fi
