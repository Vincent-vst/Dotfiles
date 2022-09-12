# =============== variable =============== 

set -x trash ~/.local/share/Trash/

# =============== alias =============== 

alias ls "logo-ls"
alias tree "tree -L 3"

# =============== functions =============== 

function fish_greeting 
    pfetch 
end 


function fish_prompt
    set -l laststatus $status
    set -l current_time $(date +%H)
    set_color magenta; echo -n $USER
    # set_color magenta; echo -n "@"
    # set_color magenta; echo -n $hostname
    if [ $current_time -lt 10 ] 
        set_color normal ; echo -n " 🌱"
    else if [ $current_time -le 12 ] && [ $current_time -ge 10 ]
        set_color normal ; echo -n " 🍉"
    else if [ $current_time -le 16 ] && [ $current_time -ge 14 ] 
        set_color normal ; echo -n " 🐢"
    else 
        set_color normal ; echo -n " 🎨"
    end 
    echo -n " "
    set_color green; echo -n (prompt_pwd)
    set_color blue; echo -n (__fish_git_prompt)
    if [ $laststatus -ne 0 ] 
        set_color red; echo -n " [$laststatus] "
    end 
    # add time if -gt 2s 
    if [ $CMD_DURATION -gt 2002 ] 
        set_color yellow; echo -n " "; echo -n "$CMD_DURATION 1000" | awk '{printf "%.1fs", $1/$2}' ; echo -n " "
    end 
    set_color normal; echo -n "> "
end 
