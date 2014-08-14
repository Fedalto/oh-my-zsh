# Remove / . - from default.
export WORDCHARS='*?_[]~=&;!#$%^(){}<>'

export EDITOR='vim'
export VISUAL=view

export PAGER="less -R"

export LC_CTYPE=$LANG

# PATH
if [ -e ~/bin ]
    then
    PATH=$PATH:~/bin
fi
if [ -e /usr/local/bin ]
    then
    PATH=/usr/local/bin:$PATH
fi
