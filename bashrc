# bash configuration file
# Zhang Yan 2014

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
shopt -s histappend
alias ls="ls --color=auto"
alias ll="ls -l"
alias grep="grep --color=auto"

# for appearance
export PS1='\u@\W\$'
