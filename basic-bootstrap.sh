#!/bin/sh

mkdir ~/tools
mkdir ~/projects
touch ~/.env.zsh
touch ~/.keys.zsh

sudo apt install zsh tmux tmuxinator
chsh -s $(which zsh)
sudo apt install python3-pip python3
pip3 install virtualenvwrapper

gnome-session-quit
