#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
#  exec startx
#fi


shopt -s autocd
export TERM=kitty
export HISTCONTROL=ignoreboth
#ALIASES##############

alias la='ls -a'
alias l='ls -CF'

