#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# add color to ls and grep
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Use vi keybindings on prompt
set -o vi

# Enable Ctrl+S to go forth in history search
stty -ixon

# Transparency in Xterm
[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

# Source variables
source ~/.config/var 

