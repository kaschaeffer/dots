# switch to good old vim
set -o vi

# useful aliases
# TODO move this to .bash_aliases
alias ls='ls -G'

# git tools
alias gco='git checkout'
function parse_git_branch () {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
# set up the command prompt
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
NO_COLOUR="\[\033[0m\]"
ORANGE=$(tput setaf 166)
VIOLET=$(tput setaf 61)
MAGENTA=$(tput setaf 125)
GREEN=$(tput setaf 64)

PS1="\w$VIOLET\$(parse_git_branch)$NO_COLOUR\$ \]"
eval "$(rbenv init -)"

# rvm hack
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
