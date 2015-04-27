#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# format and color prompt
PS1='[\u@\h \W]\$ '
export PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'

# color output for ls
alias ls='ls --color=auto'

# color output for grep
alias grep='grep --color=auto'

# avoid using matlab gui
alias matlaby='matlab -nosplash -nodesktop'

# colored man pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
	    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
	    LESS_TERMCAP_me=$'\E[0m' \
	    LESS_TERMCAP_se=$'\E[0m' \
	    LESS_TERMCAP_so=$'\E[38;5;246m' \
	    LESS_TERMCAP_ue=$'\E[0m' \
	    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
   man "$@"
}

# set python path
export PYTHONPATH=/usr/lib/python2.7/site-packages

# add MATLAB to path
export PATH=$PATH:/usr/local/MATLAB/R2014a/bin

# set EDITOR
VIM=/usr/bin
EDITOR=/usr/bin/vim
export EDITOR="vim"
export VISUAL="vim"

