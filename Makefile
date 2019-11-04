zsh:
	sudo apt-get install zsh git
	#oh-my-zsh
	git clone "https://github.com/robbyrussell/oh-my-zsh.git" ~/.oh-my-zsh
	cp .zshrc ~/.zshrc
	chsh -s $(which zsh)
	exit
	#zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/plugins/zsh-syntax-highlighting
	#z tabulator
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install		
python:
	sudo apt-get install python3-pip git python3.7
	pip3 install --user virtualenv virtualenvwrapper

git:
	sudo apt-get install git
	git config --global user.email ecepedavillamayor@gmail.com
	git config --global user.name "Enrique Cepeda"


