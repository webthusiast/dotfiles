# Executed for interactive and login shells, unless using `bash` (as opposed to `sh`) and `~/.bash_profile` or `~/.bash_login` is present. Should be backward compatible with `sh`.
# See http://www.gnu.org/software/bash/manual/bashref.html#Bash-Startup-Files

# For MacPorts and homebrew
export PATH="/usr/local/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH:/usr/sbin:./node_modules/.bin"

# # For pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
