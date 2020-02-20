# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

############### VIRTUALENVWRAPPER CONFIGURATION ##################
#
# default location of virtual environment directories
export  workon_home=$HOME/.virtualenvs

# default python version to use with virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3 '
source `which virtualenvwrapper.sh`

#THEME
ZSH_THEME="af-magic"


export UPDATE_ZSH_DAYS=7

COMPLETION_WAITING_DOTS="true"

#PLUGINS
plugins=(gitignore git z virtualenvwrapper virtualenv ubuntu sudo python zsh-syntax-highlighting vscode alias-finder command-not-found)

source $ZSH/oh-my-zsh.sh

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# SSH KEYS
# github key
export SSH_KEY_PATH="~/.ssh/github"

# ALIASES
 alias zshconfig="nvim ~/.zshrc"
 alias open="xdg-open"

# FZF CONFIG
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export CLASSPATH="$CLASSPATH:/usr/share/java/cup.jar:/usr/share/java/jflex.jar"


