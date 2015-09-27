#!/usr/bin/env bash
set -eu

sudo -v

cp -R ./bin ~/bin

xcode-select --install

read -p "Press [ENTER] key when finished..."

# sh ./install/defaults.sh
sh ./install/binaries.sh
sh ./install/apps.sh

rm -f ~/.bash_profile
rm -f ~/.inputrc
rm -f ~/.vimrc

ln -s ./bin/dotfiles/bash/bashrc ~/.bash_profile
ln -s ./bin/dotfiles/input/inputrc ~/.inputrc
ln -s ./bin/dotfiles/vim/vimrc ~/.vimrc

source ~/.bash_profile

sh ./config/git.sh
sh ./config/ruby.sh
sh ./config/postgresql.sh

bind -f ~/.inputrc

exit 0