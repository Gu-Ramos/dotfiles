function fish_prompt
    set -l prompt_symbol ' ➜  '

    echo -s ' '(date +%H:%m)' '\
    (set_color --bold blue) $USER' ' (set_color normal) \
    (set_color magenta) (pwd | sed "s|^$HOME|~|") \
    (set_color yellow) $prompt_symbol (set_color normal)
end
