
# java
alias listjava='/usr/libexec/java_home -V'
alias setjava8='export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_31`'
alias setjava6='export JAVA_HOME=`/usr/libexec/java_home -v 1.6.0_65-b14-462`'

# ctags
# use the homebrew ctags, not the crappy one that ships 
# NOTE this is mac specific!
alias ctags="`brew --prefix`/bin/ctags"
