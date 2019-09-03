# Executed for interactive non-login shells.
# See http://www.gnu.org/software/bash/manual/bashref.html#Bash-Startup-Files

. ~/.bash_functions

# A command name that is the name of a directory is executed as if it were the argument to the cd command.
shopt -s autocd &> /dev/null

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# The pattern '**' used in a filename expansion context will match all files and zero or more directories and subdirectories. If the pattern is followed by a '/', only directories and subdirectories match.
shopt -s globstar &> /dev/null

# Append to the history file, don't overwrite it.
shopt -s histappend

# Don't notify of mail
shopt -u mailwarn

# Let readline handle ^S (see https://stackoverflow.com/a/791800/487598)
stty -ixon

# Disable XON, XOFF flow control (so that ^s searches forward)
stty -ixon

# Aliasses
[[ $OSTYPE =~ darwin ]] && color='-G' || color='--color'
[[ $OSTYPE =~ darwin ]] && alias screensaver='open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'
alias ls="ls -F $color"
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'
alias lal='ls -al'
alias cutcols='cut -c -$COLUMNS'
alias history-sync='history -a; history -c; history -r'

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

# For Solarized
export TERM="screen-256color-bce"

# For python
export PATH="$(pyenv root)/shims:$PATH"

# For node
export PATH="$(nave use 12.7.0 eval 'echo $NAVEPATH' 2>/dev/null):$PATH"
