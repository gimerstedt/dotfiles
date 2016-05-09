#!/bin/sh
cwd=$(pwd)

cp $cwd/git/gitconfig.template ~/.gitconfig
cp $cwd/bash/bashrc.template ~/.bashrc

ln -s $cwd/tmux/tmux.conf ~/.tmux.conf
ln -s $cwd/bash/bash_profile ~/.bash_profile

mkdir -p ~/.vim/backup
ln -s $cwd/vim/vimrc ~/.vimrc

mkdir -p ~/.ssh
ln -s $cwd/ssh/config ~/.ssh/config

ln -s $cwd/sh/profile ~/.profile
