#!/bin/sh

#supposed to be executed from reposiry directory
PATH_CONFIG=$PWD
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd ~

ln -s $PATH_CONFIG/bashrc .bashrc
ln -s $PATH_CONFIG/zshrc .zshrc
ln -s $PATH_CONFIG/Xresources .Xresources
ln -s $PATH_CONFIG/gitconfig .gitconfig

ln -s $PATH_CONFIG/nvim .config/nvim
ln -s $PATH_CONFIG/custom.zsh-theme .oh-my-zsh/themes/custom.zsh-theme
ln -s $PATH_CONFIG/i3 .config/i3
ln -s $PATH_CONFIG/i3blocks ~/.config/i3blocks
ln -s $PATH_CONFIG/alacritty .config/alacritty

cd $PATH_CONFIG

sudo make install
