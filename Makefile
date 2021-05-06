
bootstrap: folders python zsh

folders:
	mkdir ~/tools
	mkdir ~/projects
	touch ~/.env.zsh
	touch ~/.keys.zsh

zsh: oh-my-zsh zsh-extra-plugins zsh-theme restart-zsh-config

oh-my-zsh:
	apt-get install zsh
	#oh-my-zsh
	git clone "https://github.com/robbyrussell/oh-my-zsh.git" ~/.oh-my-zsh
	cp ~/dotfiles/.zshrc ~/.zshrc
	chsh -s $(which zsh)
	echo "REMEMBER TO LOG OUT FROM YOUR ACTUAL SESSION"

zsh-extra-plugins:
	#zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $(ZSH_CUSTOM)/plugins/zsh-syntax-highlighting
	#zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions $(ZSH_CUSTOM)/plugins/zsh-autosuggestions
	#z tabulator
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/tools/.fzf
	~/tools/.fzf/install

zsh-theme:
	git clone https://github.com/denysdovhan/spaceship-prompt.git "$(ZSH_CUSTOM)/themes/spaceship-prompt" --depth=1
	ln -s "$(ZSH_CUSTOM)/themes/spaceship-prompt/spaceship.zsh-theme" "$(ZSH_CUSTOM)/themes/spaceship.zsh-theme"
	apt install powerline
	git clone https://github.com/powerline/fonts.git ~/tools/fonts
	source ~/tools/fonts/install.sh

restart-zsh-config:
	cp ~/dotfiles/.zshrc ~/.zshrc
	zsh ~/.zshrc
python:
	apt-get install python3-pip python3
	pip3 install virtualenvwrapper
