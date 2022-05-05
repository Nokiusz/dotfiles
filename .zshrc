autoload -U colors && colors
autoload -Uz compinit && compinit

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/git:(\1)/p'
}
 
setopt PROMPT_SUBST

PROMPT="$fg[red]%}%n:$fg[green]%}%~ $fg[yellow]%}\$(parse_git_branch)\$reset_color%}$ "

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
