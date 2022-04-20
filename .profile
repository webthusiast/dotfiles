# Executed for interactive and login shells, unless using `bash` (as opposed to `sh`) and `~/.bash_profile` or `~/.bash_login` is present. Should be backward compatible with `sh`.
# See http://www.gnu.org/software/bash/manual/bashref.html#Bash-Startup-Files

# For homebrew
export PATH="/usr/local/bin:$PATH:~/go/bin:~/.local/bin/"

# For Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-13.0.1.jdk/Contents/Home
export CLASSPATH=".:$HOME/lib/ST-4.0.8.jar"

# For pyenv
export PYTHON_CONFIGURE_OPTS="--enable-shared" # for reticulate

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
