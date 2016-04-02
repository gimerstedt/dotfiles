#!/bin/sh
cwd=$(pwd)

cp $cwd/git/gitconfig.template ~/.gitconfig
cp $cwd/Xresources ~/.Xresources
cp $cwd/xinitrc ~/.xinitrc
cp $cwd/bash/bashrc.template ~/.bashrc

ln -s $cwd/tmux/tmux.conf ~/.tmux.conf
ln -s $cwd/vim/vimrc ~/.vimrc
ln -s $cwd/vim/vimrc ~/.nvimrc
ln -s $cwd/zsh/zshrc ~/.zshrc
ln -s $cwd/bash/bash_profile ~/.bash_profile
ln -s $cwd/ssh/config ~/.ssh/config
