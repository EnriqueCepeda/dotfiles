#!/bin/zsh

source ~/dotfiles/helpers.sh
set_package_manager_env_var

#oh-my-zsh
git clone "git@github.com:ohmyzsh/ohmyzsh.git" ~/.oh-my-zsh

#setting ZSH_CUSTOM, as it does not exist before executing .zshrc
export ZSH_CUSTOM=~/.oh-my-zsh/custom

#PLUGINS
##zsh-syntax-highlighting
syntax_highlighting_folder=$ZSH_CUSTOM/plugins/zsh-syntax-highlighting
mkdir $syntax_highlighting_folder
git clone "git@github.com:zsh-users/zsh-syntax-highlighting.git" $syntax_highlighting_folder

##zsh-autosuggestions
zsh_autosuggestions_folder=$ZSH_CUSTOM/plugins/zsh-autosuggestions
mkdir $zsh_autosuggestions_folder
git clone "git@github.com:zsh-users/zsh-autosuggestions.git" $zsh_autosuggestions_folder

##z tabulator
git clone "git@github.com:junegunn/fzf.git" ~/tools/.fzf
~/tools/.fzf/install

#THEME
##spaceship-prompt
spaceship_prompt_folder=$ZSH_CUSTOM/themes/spaceship-prompt
mkdir $spaceship_prompt_folder
git clone "git@github.com:denysdovhan/spaceship-prompt.git" $spaceship_prompt_folder
ln -s $spaceship_prompt_folder/spaceship.zsh-theme $ZSH_CUSTOM/themes/spaceship.zsh-theme
git clone "git@github.com:powerline/fonts.git" ~/tools/fonts
chmod +x ~/tools/fonts/install.sh
~/tools/fonts/install.sh

cp ~/dotfiles/.zshrc ~/.zshrc
chmod +x ~/.zshrc
