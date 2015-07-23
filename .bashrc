# Executed for interactive non-login shells.
# See http://www.gnu.org/software/bash/manual/bashref.html#Bash-Startup-Files

# For bash
export PROMPT_COMMAND='echo [$(date +%H:%M:%S)]'
export PS1='\u@\h \W\$ '
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTTIMEFORMAT='%F %T '
export HISTIGNORE=" *"
export EDITOR=vim

# A command name that is the name of a directory is executed as if it were the argument to the cd command.
shopt -s autocd &> /dev/null

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# The pattern '**' used in a filename expansion context will match all files and zero or more directories and subdirectories. If the pattern is followed by a '/', only directories and subdirectories match.
shopt -s globstar &> /dev/null

# Append to the history file, don't overwrite it.
shopt -s histappend

# Aliasses
[[ $OSTYPE =~ darwin ]] && color='-G' || color='--color'
[[ $OSTYPE =~ darwin ]] && alias screensaver='open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'
alias ls="ls -F $color"
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'
alias lal='ls -al'

# Enable programmable completion features (you don't need to enable this, if it's already enabled in /etc/bash.bashrc and /etc/profile sources /etc/bash.bashrc).
if ! shopt -oq posix;
then if [ -f /usr/share/bash-completion/bash_completion ];
	then . /usr/share/bash-completion/bash_completion;
	elif [ -f /etc/bash_completion ];
	then . /etc/bash_completion;
	fi
fi

# Execute ~/.bash_local if it exists.
if [ -f ~/.bashrc_local ];
then . ~/.bashrc_local;
fi
