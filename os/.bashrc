# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions

# colored prompt
export PS1="\e[0;33m[\u@\h \W]\$ \e[m"

# add RVM to PATH
PATH=$PATH:$HOME/.rvm/bin

# python virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/bin/virtualenvwrapper.sh
