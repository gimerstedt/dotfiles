# aliases in this file are trying to be bash and zsh compatible

# ls
alias ls='ls --color'		#color output
alias l='ls -lFh'			#size,show type,human readable
alias la='ls -lAFh'			#long list,show almost all,show type,human readable
alias lr='ls -tRFh'			#sorted by date,recursive,show type,human readable
alias ll='ls -l'			#long list
alias lt='ls -lhrt'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

# movement
alias .='pwd'
alias ..='cd ..'
alias ...='cd ../..'

# tmux
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# ps
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'
alias hgrep="fc -El 0 | grep"

# show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'
alias dud='du -h -d 1'
alias duf='du -sh *'

# grep/find
alias lsg='ll | grep'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# mimic vim functions
alias :q='exit'
alias vi='vim'

# vimrc editing
alias ve='vim ~/.vimrc'

# zsh profile editing
alias ze='vim ~/.zshrc'
alias zr='source ~/.zshrc'

# git aliases
alias gs='git status'
alias gcm='git commit -m'
alias gco='git co'
alias gm='git merge'
alias gd='git diff'
alias gp='git push'
alias gl='git pull --rebase'

# common shell functions
alias less='less -r'
alias tf='tail -f'
alias c='clear'

# kill
alias ka9='killall -9'
alias k9='kill -9'

# make sure there's no -i
alias rm="rm"
alias cp="cp"
alias mv="mv"

# log files
alias vl="cd /var/log"

# suffixes
if [[ -x `echo $0 | grep zsh` ]]; then
	alias -g H='| head'
	alias -g T='| tail'
	alias -g G='| grep'
	alias -g L="| less"
	alias -g M="| most"
	alias -g LL="2>&1 | less"
	alias -g CA="2>&1 | cat -A"
	alias -g NE="2> /dev/null"
	alias -g NUL="> /dev/null 2>&1"
fi

# pacman
if [[ -x `which pacman 2>/dev/null` ]]; then
	alias paclsorphans='sudo pacman -Qdt'
	alias pacrmorphans='sudo pacman -Rs $(pacman -Qtdq)'
	alias pacupd='sudo pacman -Sy'
	alias pacupg='sudo pacman -Syu'
	alias pacin='sudo pacman -S'
	alias pacins='sudo pacman -U'
	alias pacre='sudo pacman -R'
	alias pacrem='sudo pacman -Rns'
	alias pacrep='pacman -Si'
	alias pacreps='pacman -Ss'
	alias pacloc='pacman -Qi'
	alias paclocs='pacman -Qs'
fi

# yaourt
if [[ -x `which yaourt 2>/dev/null` ]]; then
	alias yaupg='yaourt -Syua'
	alias yain='yaourt -S'
	alias yains='yaourt -U'
	alias yare='yaourt -R'
	alias yarem='yaourt -Rns'
	alias yarep='yaourt -Si'
	alias yareps='yaourt -Ss'
	alias yaloc='yaourt -Qi'
	alias yalocs='yaourt -Qs'
	alias yalst='yaourt -Qe'
	alias yaorph='yaourt -Qtd'
fi

# apt-get
if [[ -x `which apt-get 2>/dev/null` ]]; then
	alias aptupg='sudo apt-get update && sudo apt-get upgrade'
	alias aptin='sudo apt-get install'
	alias aptrem='sudo apt-get remove'
	alias aptreps='apt-cache search'
fi

# ssh
alias sshhelena="ssh ake1@helena -p443"
alias sshzotac="ssh ake1@zotac -p20"
alias sshdesktop="ssh ake1@desktop -p20"
alias sshasdf="ssh ake1@asdf.gg -p20"

# emacs as root
alias E="SUDO_EDITOR=\"emacsclient -c -a emacs\" sudoedit"

# root it up
alias S="sudo -E -s $SHELL"

# docker
alias dps="docker ps -a"

# ip addresses
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

