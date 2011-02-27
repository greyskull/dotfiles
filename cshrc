alias , 'cd ..'
alias ll 'ls -lG'
alias la 'ls -aG'
alias ls 'ls -FG'
alias pd pushd
alias md mkdir
alias h history

alias lla 'ls -lGa'


alias apache+ 'sudo apachectl start'
alias apache- 'sudo apachectl stop'
alias apache++ 'sudo apachectl restart'

alias c clear
alias m less

alias download 'cd ~/Downloads;curl \!:1 -0'
alias downloadcb 'cd ~/Downloads;curl `pbpaste` -0;exit'

set rmstar
set nobeep
set autolist set color set colorcat
set prompt='[%c3:%B%h%b] # '

setenv LESS x4

set path = ($path ~/bin)

alias gs 'git status'

##
# Mac Ports
##
setenv PATH /opt/local/bin:/opt/local/sbin:$PATH

set color_blue="%{\033[0;34m%}" 
set color_gray="%{\033[0;37m%}" 
set color_normal="%{\033[0m%}" 

set prompt="[%B%m%b:%B$color_blue%~${color_normal}%b:${color_gray}%h${color_normal}] %# " 
