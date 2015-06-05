#my dotfiles

##bashrc
source bashrc from ~/.bashrc

	echo "source ~/git/dotfiles/bashrc" >> ~/.bashrc

###inputrc
case-insensitive auto-complete, link to ~/.inputrc

	ln -s ~/git/dotfiles/inputrc ~/.inputrc

##config
currently only containing awesome wm config.
link config/awesome into ~/.config

##dircolors
link to ~/.dircolors and eval in zshrc

	ln -s ~/git/dotfiles/dircolors ~/.dircolors

##gitconfig
some aliases, include in ~/.gitconfig

	[include]
		path = ~/git/dotfiles/gitconfig

##tmux
TBD

#vimrc
TBD

#xinitrc
sources Xresources with xrdb and starts awesome wm.

	ln -s ~/git/dotfiles/dircolors ~/.xinitrc

##Xresources
TODO: clean up

	ln -s ~/git/dotfiles/dircolors ~/.xinitrc

##zshrc
source zshrc from ~/.zshrc
assumes oh-my-zsh installed.
theme uses powerline-patched font, need to install.

	echo "source ~/git/dotfiles/zshrc" >> ~/.zshrc
