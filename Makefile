zsh:
	sudo apt-get install zsh git
	git clone "https://github.com/robbyrussell/oh-my-zsh.git" ~/.oh-my-zsh
	cp .zshrc ~/.zshrc
	chsh -s $(which zsh)
	exit
	
python:
	sudo apt-get install python3-pip git python3.7
	pip3 install --user virtualenv virtualenvwrapper

git:
	sudo apt-get install git
	git config --global user.email ecepedavillamayor@gmail.com
	git config --global user.name "Enrique Cepeda"


