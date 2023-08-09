#!/bin/zsh

source ~/dotfiles/helpers.sh
set_package_manager_env_var

$PACKAGE_MANAGER install python3
python3 -m pip install pipenv
