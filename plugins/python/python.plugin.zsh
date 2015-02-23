# Find python file
alias pyfind='find . -name "*.py"'

# Remove python compiled byte-code in either current directory or in a
# list of specified directories
function pyclean() {
    ZSH_PYCLEAN_PLACES=${*:-'.'}
    find ${ZSH_PYCLEAN_PLACES} -type f -name "*.py[co]" -delete
    find ${ZSH_PYCLEAN_PLACES} -type d -name "__pycache__" -delete
}

if $(which ipython >/dev/null 2>&1); then
    alias p=ipython
elif $(which bpython >/dev/null 2>&1); then
    alias p=bpython
else
    alias p=python
fi
