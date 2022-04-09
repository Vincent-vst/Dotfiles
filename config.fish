#-------------- icons ---------------- 

set __fish_git_prompt_color_branch magenta --bold
set __fish_git_prompt_color_dirtystate white
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_merging yellow
set __fish_git_prompt_color_stagedstate yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red


# Icons
set __fish_git_prompt_char_cleanstate ' 👍  '
set __fish_git_prompt_char_conflictedstate ' ⚠️  '
set __fish_git_prompt_char_dirtystate ' 💩  '
set __fish_git_prompt_char_invalidstate ' 🤮  '
set __fish_git_prompt_char_stagedstate ' 🚥  '
set __fish_git_prompt_char_stashstate ' 📦  '
set __fish_git_prompt_char_stateseparator ' | '
set __fish_git_prompt_char_untrackedfiles ' 🔍  '
set __fish_git_prompt_char_upstream_ahead ' ☝️  '
set __fish_git_prompt_char_upstream_behind ' 👇  '
set __fish_git_prompt_char_upstream_diverged ' 🚧  '
set __fish_git_prompt_char_upstream_equal ' 💯 ' 


#-------------- alias ---------------- 

function testing 
    echo "test" $argv
end

#-------------- config ---------------- 


function fish_prompt --description "yuto prompt"
    echo -n -s \
       (set_color magenta) \
       (whoami) \
       "" \
       (set_color magenta) \
       (fish_git_prompt) \
       " " \
       (set_color normal) \
       "> "
end 

function fish_greeting 
   pfetch
end 
