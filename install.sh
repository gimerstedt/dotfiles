#!/bin/sh
cwd=$(pwd)

cp $cwd/git/gitconfig.template ~/.gitconfig
cp $cwd/Xresources ~/.Xresources
cp $cwd/xinitrc ~/.xinitrc
cp $cwd/bash/bashrc.template ~/.bashrc

ln -s $cwd/emacs/spacemacs ~/.spacemacs
ln -s $cwd/tmux/tmux.conf ~/.tmux.conf
ln -s $cwd/vim/vimrc ~/.vimrc
ln -s $cwd/vim/vimrc ~/.nvimrc
ln -s $cwd/zsh/zshrc ~/.zshrc
ln -s $cwd/dircolors ~/.dircolors
ln -s $cwd/bash/inputrc ~/.inputrc
