# 
# Mike Hanley
# .cshrc
# Saturday April 14, 2012
#

#
# Mac OS X should put /usr/local/bin first.
# Also achieved by reordering /etc/paths
#
setenv PATH "/usr/local/bin:${PATH}"

# Rest of this goes at the *end* of the path
foreach dir ( /opt/local/bin "$HOME/.gem/ruby/1.8/bin" "$HOME/bin"  . )
	if ( $PATH !~ *$dir* && -d "$dir" ) setenv PATH "${PATH}:${dir}"
end

# Best example of "complete" config
# http://dotfiles.org/~dominator22/.tcshrc
set complete = enhance
complete m				'n/*/f:^*.o/'
complete more			'n/*/f:^*.o/'
complete cd				'p/1/d/'
complete pushd			'p/1/d/'
complete pd				'p/1/d/'
complete rmdir			'p/*/d/'
complete where			'n/*/c/'
complete man			'n/*/c/'
complete which			'n/*/c/'
complete gunzip			'p/*/f:*.{gz,Z,tgz,taz}/'

set savehist=1000 merge

set noclobber
set hostname = `hostname | sed -e 's/[.].*//'`

##
# prompt 
##
set ptail = "»";

set color_path="%{\033[0;47m%}" 
set color_gray="%{\033[1;36m%}" 
set color_normal="%{\033[0m%}" 
set color_history="%{\033[0;35m%}" 

setenv GIT_PROMPT  "git status |& .dotfiles/git-prompt.awk"

# history time path
set p1="%B%h%b %t:%B$color_path%~$color_normal%b " 

# history time computer path
# set p1="%h %t %B%m%b:%B$color_path%~$color_normal%b " 

set prompt="${color_history}${p1}${color_gray}`$GIT_PROMPT`${color_normal} ${ptail} "

##



alias mv 'mv -i'
alias cp 'cp -i'

# alias , 'cd ..' 
alias ll 'ls -lhG' 
alias la 'ls -AG'
alias ls 'ls -FG'
alias pd pushd
alias md mkdir
alias h history
alias dir 'ls'

alias lla 'ls -lGa'

alias vimrc 'vi ~/.vimrc'

alias apache+ 'sudo apachectl start'
alias apache- 'sudo apachectl stop'
alias apache++ 'sudo apachectl restart'

alias tree "find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias c clear
alias m more
alias cdd "cd -"

alias download 'curl \!:1 -0'
alias downloadcb 'curl `pbpaste` -0;exit'

alias take 'mkdir \!:1 && cd \!:1'

set rmstar
set nobeep
# set autolist set color set colorcat
set autolist

# Git
# alias gg 'git commit -v -a -m "\!:*"'
# alias ga 'git add'
# alias gs 'git status'
# alias g  'git status'
# alias gb 'git branch --color -a'
# alias gbco 'git checkout -b'
# alias gca 'git commit -v -a'
# alias gd 'git diff | more'
# alias gp 'git push'
# alias gl 'git pull'
# alias gls 'git ls-files'
# alias gc 'git commit -am'

# From: http://bit.ly/yJDiND
# vim file.c
# gd					(git diff)
# ga file.c				(git add file.c)
# gc "added feature"	(git commit -m "added feature")
# ...
# gp					(git push)

# Processes
alias tu 'top -o cpu' # sort by cpu
alias tm 'top -o vsize' # sort by memory

# Finder
alias o 'open . &'
alias gc 'open -a "Google Chrome" --args'

# Aliases
alias reload 'source ~/.cshrc'
# alias ea 'vi ~/.cshrc && source ~/.cshrc'

alias zz top

##
# Mac Ports
##
#setenv PATH /opt/local/bin:/opt/local/sbin:$PATH
