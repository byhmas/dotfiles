test -z "$PS1" && return

export EDITOR=vim
export VISUAL=vim
export EMAIL="hendry@webconverger.com"
export DEBEMAIL="hendry@webconverger.com"
export DEBFULLNAME='Kai Hendry'

export GREP_OPTIONS="--exclude-dir=\.svn"

shopt -s checkwinsize
shopt -s cmdhist
shopt -s histappend
shopt -s cdspell
shopt -s cdable_vars

complete -cf sudo

PS1='\[\e[1m\]\h:\w\$\[\e[0m\] '

# Trying to get a history that works... (might be BS)
HISTSIZE=20000
PROMPT_COMMAND="history -a"
export HISTCONTROL=ignoredups
export HISTSIZE PROMPT_COMMAND

umask 002

alias ll='ls -alh --group-directories-first --color=always'
alias ac='vim ~/private/personal/accounts'
alias suspend='sudo pm-suspend'
alias feh="sxiv"

alias grep='GREP_COLOR="1;33;40" LANG=C grep --color=auto'
