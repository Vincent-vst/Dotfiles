# ==============Alias==============

# alias ls='lsd --group-dirs first'
# alias srm='/bin/safe-rm'

# ==============Basic ZSH config==============

autoload -U colors && colors
PS1="%{$fg[blue]%}Yuto %{$fg[yellow]%}%~ %{$reset_color%}> "
setopt autocd

# ==============Plugins==============

# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /Users/programming/Documents/Semestre2/Linux/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
