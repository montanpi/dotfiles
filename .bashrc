#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# add color to ls and grep
alias ls='ls --color=auto'
alias grep='grep --color=auto'
# /bin/bash -c 'XDG_CONFIG_HOME=/home/pietro/.config/xfce4-alt xfce4-terminal --hide-menubar --disable-server'

# Use vi keybindings on prompt
set -o vi

# Enable Ctrl+S to go forth in history search
stty -ixon

# Transparency in Xterm
[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

# Source variables file
source ~/.config/var 

