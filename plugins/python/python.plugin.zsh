# Find python file
alias pyfind='find . -name "*.py"'

# Remove python compiled byte-code
alias pyclean='find . -type f -name "*.py[co]" -delete'

if (bpython 2>/dev/null)
  then
    alias p=bpython
else
    alias p=python
fi
