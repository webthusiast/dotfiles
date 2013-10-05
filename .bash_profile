# Executed for interactive login shells. Should only contain things backward incompatible with sh; the rest should go in ~/.profile.
# See http://www.gnu.org/software/bash/manual/bashref.html#Bash-Startup-Files

# Execute ~/.profile if it exists.
if [ -f ~/.profile ];
then . ~/.profile;
fi

# Execute ~/.bashrc if it exists.
# Note that this shouldn't be done from ~/.profile, because ~/.bashrc might not be backward compatible with sh.
if [ -f ~/.bashrc ];
then . ~/.bashrc;
fi
