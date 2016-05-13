#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias alsa='alsamixer -g'
alias ptpath='. ~/dev/ptp/ptpath.sh'

PS1='[\u@\h \W]\$ '
