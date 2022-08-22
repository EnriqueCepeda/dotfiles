#!/bin/sh

source ~/dotfiles/helpers.sh
set_package_manager_env_var

mkdir ~/tools
mkdir ~/projects
touch ~/.env.zsh
touch ~/.keys.zsh
cp ~/dotfiles/.gitmessage.txt ~/

chmod +x ./basic-bootstrap.sh ./oh-my-zsh.sh ./restart-config.sh ./.zshrc ~/.env.zsh ~/.keys.zsh

$PACKAGE_MANAGER install zsh tmux tmuxinator python3-pip python3
python3 -m pip install pipenv
chsh -s $(which zsh)
