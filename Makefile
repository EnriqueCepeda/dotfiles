SHELL := /bin/zsh

zsh: oh-my-zsh zsh-extra-plugins zsh-theme restart-zsh-config

oh-my-zsh:
	sudo apt-get install zsh
	#oh-my-zsh
	git clone "https://github.com/robbyrussell/oh-my-zsh.git" ~/.oh-my-zsh
	cp ~/dotfiles/.zshrc ~/.zshrc
	chsh -s $(which zsh)
zsh-extra-plugins:
	#zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $(ZSH)/plugins/zsh-syntax-highlighting
	#z tabulator
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
zsh-theme:
	git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
	ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

restart-zsh-config:
	cp ~/dotfiles/.zshrc ~/.zshrc
	source ~/.zshrc
python:
	sudo apt-get install python3-pip python3
	sudo pip3 install virtualenvwrapper
