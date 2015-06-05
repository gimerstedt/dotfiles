# download from
# http://ohmyz.sh/
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# theme
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="yyyy-mm-dd"

if [ -z "$plugins" ]
then
	plugins=(git vi-mode vim-interaction common-aliases tmux)
fi

# User configuration

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
#export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# just in case
export LANG=en_US.UTF-8

# need some vi
export EDITOR="vim"

alias sshhelena="ssh ake1@helena -p8080"
alias sshzotac="ssh ake1@zotac -p20"
alias sshdesktop="ssh ake1@desktop -p443"
alias sshasdf="ssh ake1@asdf.gg -p20"
alias sshdebian="ssh ake1@localhost -p2222"
alias C="clear"
alias rm="rm"
alias cp="cp"
alias mv="mv"
alias rezshrc="source ~/.zshrc"

eval `dircolors ~/.dircolors`
