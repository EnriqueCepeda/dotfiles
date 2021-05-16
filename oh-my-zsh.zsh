#!/usr/bin/zsh

#oh-my-zsh
git clone "git@github.com:ohmyzsh/ohmyzsh.git" ~/.oh-my-zsh

#PLUGINS
##zsh-syntax-highlighting
git clone "git@github.com:zsh-users/zsh-syntax-highlighting.git" $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

##zsh-autosuggestions
git clone "git@github.com:zsh-users/zsh-autosuggestions.git" $ZSH_CUSTOM/plugins/zsh-autosuggestions

##z tabulator
git clone "git@github.com:junegunn/fzf.git" ~/tools/.fzf
~/tools/.fzf/install

#THEME
##spaceship-prompt
git clone "git@github.com:denysdovhan/spaceship-prompt.git" $ZSH_CUSTOM/themes/spaceship-prompt
ln -s $ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme $ZSH_CUSTOM/themes/spaceship.zsh-theme
sudo apt install powerline
git clone "git@github.com:powerline/fonts.git" ~/tools/fonts
source ~/tools/fonts/install.sh


cp ~/dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
