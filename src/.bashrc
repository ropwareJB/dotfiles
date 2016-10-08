#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias alsa='alsamixer -g'

# Req advcp
alias cp='acp -g'
alias mv='amv -g'

alias pt-path='. ~/dev/ptp/pt-path.sh'
alias pt-cd='. ~/dev/ptp/pt-cd.sh'

PS1='[\u@\h \W]\$ '
