#!/bin/sh
cwd=$(pwd)

cp $cwd/git/gitconfig.template ~/.gitconfig
cp $cwd/bash/bashrc.template ~/.bashrc

ln -sf $cwd/tmux/tmux.conf ~/.tmux.conf
ln -sf $cwd/bash/bash_profile ~/.bash_profile

mkdir -p ~/.vim/backup
ln -sf $cwd/vim/vimrc ~/.vimrc

mkdir -p ~/.ssh
ln -sf $cwd/ssh/config ~/.ssh/config

ln -sf $cwd/sh/profile ~/.profile
