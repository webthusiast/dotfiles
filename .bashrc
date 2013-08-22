#!/bin/bash

# For bash
export PS1='\u@\h \W\$ '
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTTIMEFORMAT='%F %T '
export HISTIGNORE=" *"
export EDITOR=vim

# A command name that is the name of a directory is executed as if it were the argument to the cd command.
shopt -s autocd &> /dev/null

# The pattern '**' used in a filename expansion context will match all files and zero or more directories and subdirectories. If the pattern is followed by a '/', only directories and subdirectories match.
shopt -s globstar &> /dev/null

# Aliasses
alias ls='ls -FG'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'
alias lal='ls -al'
