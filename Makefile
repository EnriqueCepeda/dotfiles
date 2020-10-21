zsh: git oh-my-zsh zsh-extra-plugins restart-zsh-config

oh-my-zsh: 
	sudo apt-get install zsh
	#oh-my-zsh
	git clone "https://github.com/robbyrussell/oh-my-zsh.git" ~/.oh-my-zsh
	cp ~/dotfiles/.zshrc ~/.zshrc
	chsh -s $(which zsh)
	echo "REMEMBER TO LOG OUT FROM YOUR ACTUAL SESSION"
zsh-extra-plugins:
	#zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	#z tabulator
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
restart-zsh-config:
	cp ~/dotfiles/.zshrc ~/.zshrc
	source ~/.zshrc
python:
	sudo apt-get install python3-pip git python3
	sudo pip3 install virtualenv virtualenvwrapper

configure-display:
	#Configuration works in ubuntu 19.10
	sudo apt-get install ddcutil
	#Add current user to i2c group
	sudo usermod $(whoami) -aG i2c
	sudo  cp /usr/share/ddcutil/data/45-ddcutil-i2c.rules /etc/udev/rules.d
	echo "You can install the gnome-extension plugin located at https://github.com/themightydeity/gnome-display-brightness-ddcutil or gnome-extensions"
	#Be careful before executing it, it do an udev rule
	#The rule basically establishes a comunication between the group i2c (where your user belongs) and the monitor through i2c channel.
	#Therefore, ddcutil can change monitor settings the channel 
	#Source ddcutil: https://www.ddcutil.com/
	#Source user config: https://lexruee.ch/setting-i2c-permissions-for-non-root-users.html
	


