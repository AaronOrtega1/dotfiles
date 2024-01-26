### Starship setting prompt
starship init fish | source

### No greeting
set -g fish_greeting

### Alias
alias py='python3'

### CONDA PATH
set -x PATH $PATH /home/aarondev/anaconda3/bin/

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/aarondev/anaconda3/bin/conda
    eval /home/aarondev/anaconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/aarondev/anaconda3/etc/fish/conf.d/conda.fish"
        . "/home/aarondev/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/aarondev/anaconda3/bin $PATH
    end
end
# <<< conda initialize <<<
