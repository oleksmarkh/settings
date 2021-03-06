# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# requires "brew install git && brew install bash-completion"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# "brew install coreutils" to have "gls" (GNU "ls" with extra flags)
alias ll='gls -Alhv --group-directories-first'
alias du='du -h'
alias tree='tree -C --dirsfirst'
alias grep='grep --color'

function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\(\1\)/'
}

# requires "brew install ffmpeg gifsicle"
# function video2gif() {
#   ffmpeg -y -i "${1}" -vf fps=${3:-10},scale=${2:-1024}:-1:flags=lanczos,palettegen "${1}.png"
#   ffmpeg -i "${1}" -i "${1}.png" -filter_complex "fps=${3:-10},scale=${2:-1024}:-1:flags=lanczos[x];[x][1:v]paletteuse" "${1}".tmp.gif
#   rm "${1}.png"
#   gifsicle -O3 --lossy=80 -o "${1}".gif "${1}".tmp.gif
#   rm "${1}".tmp.gif
# }

# colored prompt
# see: http://makandracards.com/makandra/1090-customize-your-bash-prompt
export PS1='\[\e[01;30m\]\t`if [ $? = 0 ]; then echo "\[\e[32m\] ✔ "; else echo "\[\e[31m\] ✘ "; fi`\[\e[00;37m\]\u\[\e[01;37m\]:`[[ $(git status 2> /dev/null | head -n2 | tail -n1) != "# Changes to be committed:" ]] && echo "\[\e[31m\]" || echo "\[\e[33m\]"``[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] || echo "\[\e[32m\]"`$(parse_git_branch "(%s)\[\e[00m\]")\[\e[01;34m\]\w\[\e[00m\]\$ '

# python virtualenv
# see: https://virtualenvwrapper.readthedocs.io/en/latest/install.html#basic-installation
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/python-projects
source /usr/local/bin/virtualenvwrapper.sh

# see: https://www.reddit.com/r/Fedora/comments/37n9vi/vte/
# unset PROMPT_COMMAND

# requires "brew install nvm"
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# "openssl" brew formula is keg-only, which means it was not symlinked into /usr/local,
# because Apple has deprecated use of OpenSSL in favor of its own TLS and crypto libraries
export PATH="/usr/local/opt/openssl/bin:$PATH"

# see: https://github.com/tmux/tmux/issues/328#issuecomment-251986075
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8
