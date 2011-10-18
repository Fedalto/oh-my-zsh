function prompt_separator {
    local number_columns=$(( $COLUMNS - 9 ))
    printf '-%.0s' {1..$number_columns}
}

PROMPT="%F{yellow}"'$(prompt_separator)'" %t%f
%F{green}%~%f%# "
