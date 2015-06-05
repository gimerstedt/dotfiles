#my dotfiles

##bashrc
source bashrc from ~/.bashrc
###inputrc
case-insensitive auto-complete, link to ~/.inputrc

##config
currently only containing awesome wm config.
link config/awesome into ~/.config

##dircolors
link to ~/.dircolors and eval in zshrc

##gitconfig
some aliases, include in ~/.gitconfig

	[include]
		path = ~/git/dotfiles/gitconfig

##tmux
TBD

#vimrc
TBD

#xinitrc
source Xresources with xrdb and start awesome wm.

##Xresources
TODO: clean up

##zshrc
source zshrc from ~/.zshrc
assumes oh-my-zsh installed.
theme uses powerline-patched font, need to install.
