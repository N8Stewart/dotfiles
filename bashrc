# Descriptive names for the console colors
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[0;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'

# Export useful aliases to type less and do more
alias sagg='sudo apt-get upgrade'
alias sagp='sudo apt-get update'
alias sag='sudo apt-get update && sudo apt-get upgrade'
alias sagi='sudo apt-get install'
alias rmd='rm -rf'
alias h='history'
alias clr='clear'
alias stdlinux='ssh @stdlinux.cse.ohio-state.edu'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source "$HOME/.rvm/scripts/rvm"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#if id command returns zero, you’ve root access.
if [ $(id -u) -eq 0 ];
then # you are root, set red colour prompt
	PS1="\\[$(tput setaf 1)\\]\\u@\\h:\\w #\\[$(tput sgr0)\\]"
else # normal
	PS1="\[${COLOR_CYAN}\][\[${COLOR_LIGHT_GREEN}\]\\u\[${COLOR_LIGHT_PURPLE}\]@\[${COLOR_LIGHT_CYAN}\]\\t \[${COLOR_CYAN}\]\\w] $ \[${COLOR_NC}\]"
fi

