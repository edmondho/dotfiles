#
# edmondho's custom .bashrc
#

#
# Prompt format:
# user@host /p/w/d
# history$
#
PS1="\n\u@\h \[\033[1;34m\]\w\[\033[0m\]\n\!$ "

# vi mode prompt
set -o vi


#
# Path
#
PATH=/usr/local/bin:/opt/local/bin:$PATH
export PATH


#
# Aliases
#
alias ls='ls -CFG'
alias la='ls -A'
alias ll='ls -l'
alias lal='ll -A'
alias ltr='ls -ltr'
alias rm='rm -i'
alias clearh='clear; history -c'
alias grep='grep -n --color'
alias vi='vim'
alias view='vim -R'


#
# grep ignore svn directories
#
GREP_OPTIONS="--exclude=\*.svn\*"
export GREP_OPTIONS
