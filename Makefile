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
configure-display:
	#Configuration works in ubuntu 19.10
	sudo apt-get install ddcutil
	#Add current user to i2c group
	sudo usermod $(whoami) -aG i2c
	#Be careful before executing it, it do an udev rule
	#The rule basically establishes a comunication between the group i2c (where your user belongs) and the monitor through i2c channel.
	#Therefore, ddcutil can change monitor settings the channel 
	#Source ddcutil: https://www.ddcutil.com/
	#Source user config: https://lexruee.ch/setting-i2c-permissions-for-non-root-users.html
	sudo  cp /usr/share/ddcutil/data/45-ddcutil-i2c.rules /etc/udev/rules.d
	echo "You can install the gnome-extension plugin located at https://github.com/themightydeity/gnome-display-brightness-ddcutil or gnome-extensions"
	


