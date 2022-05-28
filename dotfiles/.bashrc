# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
# "brew install coreutils" to have "gls" (GNU "ls" with extra flags)
alias ll='gls -Alhv --group-directories-first'
alias du='du -h'
alias tree='tree -C --dirsfirst'
alias grep='grep --color'

# requires "brew install ffmpeg gifsicle"
# function video2gif() {
#   ffmpeg -y -i "${1}" -vf fps=${3:-10},scale=${2:-1024}:-1:flags=lanczos,palettegen "${1}.png"
#   ffmpeg -i "${1}" -i "${1}.png" -filter_complex "fps=${3:-10},scale=${2:-1024}:-1:flags=lanczos[x];[x][1:v]paletteuse" "${1}".tmp.gif
#   rm "${1}.png"
#   gifsicle -O3 --lossy=80 -o "${1}".gif "${1}".tmp.gif
#   rm "${1}".tmp.gif
# }

# python virtualenv
# see: https://virtualenvwrapper.readthedocs.io/en/latest/install.html#basic-installation
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/python-projects
source /usr/local/bin/virtualenvwrapper.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
source $NVM_DIR/nvm.sh

# see: https://github.com/tmux/tmux/issues/328#issuecomment-251986075
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8
