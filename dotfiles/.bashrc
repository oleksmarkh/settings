# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ll='ls -Alhv --group-directories-first'
alias du='du -h'
alias tree='tree -C --dirsfirst'
alias grep='grep --color'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\(\1\)/'
}

# colored prompt
# see: http://makandracards.com/makandra/1090-customize-your-bash-prompt
export PS1='\[\e[01;30m\]\t`if [ $? = 0 ]; then echo "\[\e[32m\] ✔ "; else echo "\[\e[31m\] ✘ "; fi`\[\e[00;37m\]\u\[\e[01;37m\]:`[[ $(git status 2> /dev/null | head -n2 | tail -n1) != "# Changes to be committed:" ]] && echo "\[\e[31m\]" || echo "\[\e[33m\]"``[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] || echo "\[\e[32m\]"`$(parse_git_branch "(%s)\[\e[00m\]")\[\e[01;34m\]\w\[\e[00m\]\$ '

# python virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/bin/virtualenvwrapper.sh

# see: https://www.reddit.com/r/Fedora/comments/37n9vi/vte/
unset PROMPT_COMMAND
