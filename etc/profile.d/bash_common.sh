[ -d ~/bin ] && export PATH="$PATH:${HOME}/bin"

#export PRINTER="xxx"
export HISTCONTROL="ignoredups"
export LC_COLLATE="POSIX"
export EDITOR="vim"

umask 022

alias pf="ps axf"
alias pu="ps xf"
alias ls="/bin/ls --color=auto"
alias ll="ls -l"
alias l="ll -a"
alias lh="l -h"
alias la="ls -a"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias beep="echo -en '\x07'"
alias lock="/usr/bin/clear ; /usr/bin/vlock -a"
alias cd.='cd "`readlink -f .`"'
alias vd='vim -d'
alias grep='/bin/grep --color'
alias sbc='source /etc/bash_completion'
alias todoA='todo -G -A -f -done'
alias cm='cmake -G Ninja'
alias n='ninja'
alias e='exec'
alias cdt='cd "$(mktemp -d)"'
