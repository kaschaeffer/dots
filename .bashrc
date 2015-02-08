# .bashrc

# homebrew root directory
BREW_ROOT=`brew --prefix`

# aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi


#==========================================
# java
#==========================================

# use java 8 by default
setjava8


#==========================================
# python
#==========================================

# set up virtualenvwrapper
source "$BREW_ROOT/bin/virtualenvwrapper.sh"
