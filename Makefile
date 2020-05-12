SHELL := /bin/zsh

zsh: git oh-my-zsh zsh-extra-plugins restart-zsh-config

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
restart-zsh-config:
	cp ~/dotfiles/.zshrc ~/.zshrc
	source ~/.zshrc
python:
	sudo apt-get install python3-pip git python3.7
	sudo pip3 install virtualenvwrapper

git:
	#CONFIGURE VARIABLES GIT_USER AND GIT_MAIL BEFORE
	sudo apt-get install git
	git config --global user.email $(GIT_MAIL)
	git config --global user.name $(GIT_NAME)
	echo "Remember to set GIT_MAIL and GIT_MAIL enviroment variables before executing it"


