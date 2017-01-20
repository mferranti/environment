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
# alias brainiac-run-dev="BRAINIAC_MYSQL_HOST=192.168.99.100 BRAINIAC_REDIS_HOST=192.168.99.100 MAXMIND_KEY=SI7AcK3Qw7Zi BRAINIAC_AMQP_HOST=192.168.99.100 npm run dev"
# alias brainiac-run-api-dev="BRAINIAC_MYSQL_HOST=192.168.99.100 BRAINIAC_REDIS_HOST=192.168.99.100 MAXMIND_KEY=SI7AcK3Qw7Zi BRAINIAC_AMQP_HOST=192.168.99.100 npm run api-dev"
# alias brainiac-run-api-prod="BRAINIAC_MYSQL_HOST=192.168.99.100 BRAINIAC_REDIS_HOST=192.168.99.100 BRAINIAC_AMQP_HOST=192.168.99.100 NEW_RELIC_LICENSE_KEY=test npm run api-prod"
# alias brainiac-run-www-prod="BRAINIAC_MYSQL_HOST=192.168.99.100 BRAINIAC_REDIS_HOST=192.168.99.100 BRAINIAC_AMQP_HOST=192.168.99.100 NEW_RELIC_LICENSE_KEY=test npm run www-prod"
# alias brainiac-run-feeds-prod="BRAINIAC_MYSQL_HOST=192.168.99.100 BRAINIAC_REDIS_HOST=192.168.99.100 BRAINIAC_AMQP_HOST=192.168.99.100 NEW_RELIC_LICENSE_KEY=test npm run feeds-prod"

alias brainiac-run-dev-local="BRAINIAC_MYSQL_HOST=192.168.1.215 BRAINIAC_REDIS_HOST=192.168.1.215 MAXMIND_KEY=SI7AcK3Qw7Zi BRAINIAC_AMQP_HOST=192.168.1.215 npm run dev"
alias brainiac-run-proxy='docker-compose run -e BRAINIAC_WWW_INTERNAL_HOST=`ipconfig getifaddr en0` -e BRAINIAC_API_INTERNAL_HOST=`ipconfig getifaddr en0` --service-ports proxy'
alias brainiac-hosts='eval $(docker-machine env) && BRAINIAC_MYSQL_HOST=192.168.99.100 BRAINIAC_REDIS_HOST=192.168.99.100 MAXMIND_KEY=SI7AcK3Qw7Zi BRAINIAC_AMQP_HOST=192.168.99.100'
alias brainiac-run-dev='eval $(docker-machine env) && BRAINIAC_WWW_PUBLIC_HOST=`docker-machine ip` MAXMIND_KEY=SI7AcK3Qw7Zi BRAINIAC_MYSQL_HOST=`docker-machine ip` BRAINIAC_REDIS_HOST=`docker-machine ip` BRAINIAC_AMQP_HOST=`docker-machine ip` concurrently --kill-others "npm run databases" "npm run api-dev" "npm run feeds-dev" "npm run www-watch-client" "npm run www-dev-server"'

# brainiac() {
#   BRAINIAC_WWW_PUBLIC_HOST=`docker-machine ip` MAXMIND_KEY=SI7AcK3Qw7Zi BRAINIAC_MYSQL_HOST=`docker-machine ip` BRAINIAC_REDIS_HOST=`docker-machine ip` BRAINIAC_AMQP_HOST=`docker-machine ip` "$@"
# }

brainiac() {
  BRAINIAC_WWW_PUBLIC_HOST=`ipconfig getifaddr en0` MAXMIND_KEY=SI7AcK3Qw7Zi BRAINIAC_MYSQL_HOST=`ipconfig getifaddr en0` BRAINIAC_REDIS_HOST=`ipconfig getifaddr en0` BRAINIAC_AMQP_HOST=`ipconfig getifaddr en0` "$@"
}

brainiac-proxy() {
  BRAINIAC_WWW_INTERNAL_HOST=`ipconfig getifaddr en0` BRAINIAC_API_INTERNAL_HOST=`ipconfig getifaddr en0` "$@"
}

gcm-keys() {
  GCM_API_KEY='AIzaSyCjX8A4e17nK2Ohl-ddsqbTPCbSLzgosSA' GCM_SENDER_ID='239707081006'
}
# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
