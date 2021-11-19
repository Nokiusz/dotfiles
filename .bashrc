#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#colors
WHITE="\033[1;37m"
BLACK="\033[0;30m"
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
#show git branch function
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ git:(\1)/'
}


#PS1='[\u@\h \W]\$ '
#PS1="\[\e[0;31m\]\u: \[\e[0;32m\]\w\[\e[0;93m\]\$(parse_git_branch)\[\033[00m\]$ \[\e[0m\]"
PS1="\[$RED\]\u:\[$GREEN\]\w\[$YELLOW\]\$(parse_git_branch)\[$WHITE\]$ "

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cls="clear"
alias ip="ip --color=auto"
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#my paths
alias studia='cd ~/Dokumenty/Studia'
alias github='cd ~/Dokumenty/Github'
alias steam='prime-run steam'

alias dockersql='sudo docker start be4b47067476'

export MOZ_ENABLE_WAYLAND=1 firefox

