# Executed for interactive non-login shells.
# See http://www.gnu.org/software/bash/manual/bashref.html#Bash-Startup-Files

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

# Break when an undefined env var is used.
set -u

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
# alias history-sync='history -a; history -n'
alias excuse='w3m -dump http://devexcuses.com/ | head -1 | say -v daniel'

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
