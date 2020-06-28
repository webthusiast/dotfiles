# Executed for interactive and login shells, unless using `bash` (as opposed to `sh`) and `~/.bash_profile` or `~/.bash_login` is present. Should be backward compatible with `sh`.
# See http://www.gnu.org/software/bash/manual/bashref.html#Bash-Startup-Files

# For MacPorts and homebrew
export PATH="/usr/local/bin:$PATH"

# For Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_74.jdk/Contents/Home
export CLASSPATH=".:$HOME/lib/ST-4.0.8.jar"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
