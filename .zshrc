autoload -U colors && colors
autoload -Uz compinit && compinit

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/git:(\1)/p'
}
 
setopt PROMPT_SUBST

PROMPT='%(?.🦊.?%?)%f %B%F{green}%~%f%b %F{yellow} $(parse_git_branch) %f$ '


zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'


alias cd..='cd ..'
alias CD='cd'
alias cls="clear"
alias ip="ipconfig getifaddr en0"
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias sl='ls -G'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
