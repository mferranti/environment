source /Users/marcelo/Proyectos/brainiac-www/tools/docker/env

source ~/.git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp \w$(__git_ps1)]\$ '
PS1='\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(__git_ps1 "#%s")\[\033[00m\]\$ '

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias vim="/usr/local/bin/vim"
