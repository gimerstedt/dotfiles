#!/bin/sh
HERE=$(pwd)
SCRIPTS=(bashrc config dircolors inputrc tmux.conf vimrc xinitrc Xresources zshrc)
mkdir -p backup

for index in ${!SCRIPTS[*]}
do
	S=${SCRIPTS[$index]}
	printf "backing up $HOME/$S to $HERE/backup/$S\n"
	mv $HOME/.$S $HERE/backup
	printf "linking $S to $HOME/.$S\n"
	ln -s $HERE/$S $HOME/.$S
done

#mkdir -p backup && mv ~/.bashrc backup
#ln -s $HERE/.bashrc ~/.bashrc
