# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

############### VIRTUALENVWRAPPER CONFIGURATION ##################
#
# default location of virtual environment directories
export  workon_home=$HOME/.virtualenvs

# default python version to use with virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3 '
export PROJECT_HOME="$HOME/projects"
source `which virtualenvwrapper.sh`

#THEME
ZSH_THEME="spaceship"

export UPDATE_ZSH_DAYS=7

COMPLETION_WAITING_DOTS="true"

#PLUGINS


plugins=(gitignore git z virtualenvwrapper virtualenv ubuntu sudo python
	zsh-syntax-highlighting vscode alias-finder command-not-found
	zsh-autosuggestions colored-man-pages web-search tmux)

source $ZSH/oh-my-zsh.sh

export ZSH_ALIAS_FINDER_AUTOMATIC="true"

# SSH KEYS
export SSH_KEY_PATH="~/.ssh/github"


# ALIASES
 alias zshconfig="nvim ~/.zshrc"
 alias open="xdg-open"
 alias uclmvpn="sudo openconnect --protocol=gp portal.vpn.uclm.es"

# FZF CONFIG
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

############### JADE CONFIGURATION #####################
export CLASSPATH="$CLASSPATH:$HOME/OneDrive/UNIVERSIDAD/CUARTO/MULTIAGENTES/jade/lib/jade.jar"

#############  SPARK CONFIGURATION ##################
export SPARK_HOME="/opt/spark"
export PATH="$PATH:$SPARK_HOME/bin"

############  JFLEX & CUP CONFIGURATION ################
export CLASSPATH="$CLASSPATH:/usr/share/java/cup.jar:/usr/share/java/jflex-1.7.0.jar"
