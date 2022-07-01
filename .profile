# Executed for interactive and login shells, unless using `bash` (as opposed to `sh`) and `~/.bash_profile` or `~/.bash_login` is present. Should be backward compatible with `sh`.
# See http://www.gnu.org/software/bash/manual/bashref.html#Bash-Startup-Files

# For homebrew
export PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$(brew --prefix)/opt/coreutils/libexec/gnubin:$(brew --prefix)/bin:$PATH:~/.local/bin/"

# For Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-13.0.1.jdk/Contents/Home
export CLASSPATH=".:$HOME/lib/ST-4.0.8.jar"

# For python/pyenv
export PATH="$(pyenv root)/shims:$PATH"
export PYTHON_CONFIGURE_OPTS="--enable-shared" # for reticulate

# For node/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
