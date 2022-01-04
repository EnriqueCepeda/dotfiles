#!/bin/sh

mkdir ~/tools
mkdir ~/projects
touch ~/.env.zsh
touch ~/.keys.zsh
cp ~/dotfiles/.gitmessage.txt ~/

chmod +x ./basic-bootstrap.sh ./oh-my-zsh.sh ./restart-config.sh ./.zshrc ~/.env.zsh ~/.keys.zsh

sudo apt install zsh tmux tmuxinator python3-pip python3
pip3 install virtualenvwrapper
chsh -s $(which zsh)
