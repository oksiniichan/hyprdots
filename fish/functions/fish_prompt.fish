function fish_prompt
    set_color normal
    printf '['
    set_color green
    printf '%s' (whoami)
    set_color normal
    printf '@'
    set_color cyan
    printf '%s' (hostname -s)
    set_color normal
    printf ' '
    set_color blue
    printf '%s' (prompt_pwd | sed "s|^$HOME||")
    set_color normal
    printf ']$ '
end

