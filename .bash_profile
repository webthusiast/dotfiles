# Executed for interactive and login bash shells. Should only contain things backward incompatible with sh; the rest should go in ~/.profile.
# See http://www.gnu.org/software/bash/manual/bashref.html#Bash-Startup-Files

# Execute ~/.profile if it exists.
if [ -f ~/.profile ];
then . ~/.profile;
fi

# For bash
export PS1='\! \u@\h \W\$ '
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTTIMEFORMAT='%F %T '
export HISTIGNORE=" *"
export EDITOR=vim

# Execute ~/.bashrc if it exists.
# Note that this shouldn't be done from ~/.profile, because ~/.bashrc might not be backward compatible with sh.
if [ -f ~/.bashrc ];
then . ~/.bashrc;
fi
