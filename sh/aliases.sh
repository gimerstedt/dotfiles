# aliases in this file are trying to be bash and zsh compatible

# ls
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias ll='ls -l'      #long list
alias lt="ls -lhrt"
alias ldot='ls -ld .*'
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
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"

# pacman
if [[ -x `which pacman` ]]; then
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
if [[ -x `which yaourt` ]]; then
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

# ssh
alias sshhelena="ssh ake1@helena -p8080"
alias sshzotac="ssh ake1@zotac -p20"
alias sshdesktop="ssh ake1@desktop -p443"
alias sshasdf="ssh ake1@asdf.gg -p20"
alias sshdebian="ssh ake1@localhost -p2222"

# emacs as root
alias E="SUDO_EDITOR=\"emacsclient -c -a emacs\" sudoedit"
