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

# TODO
#   1. set up some indicator for background processes?
#   2. set up some indicator for both git and hg status (green/yellow/red)
#   3. fancy, simple unicode symbolic prompt
#   4. consider putting on next line (show prompt on line above?)
#   5. whether build is dirty?
#
#   just use powerline-shell?
#   or promptline (the airline version of powerline)
#
#   display cool stuff on startup
#   push notifications for builds?
#   some indication of whether on remote machine?
#   symbols that literally represent branching
#   use U+21f8 (arrows with ticks) to represent background processes
#   >> foo << status?
#   
#   important: make prompt stand out from text!
#   mess with lscolors?
#   remap ls to tree and expand out intelligently if few folders? (useful for java)
