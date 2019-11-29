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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=7

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

#PLUGINS
plugins=(gitignore git z virtualenvwrapper virtualenv ubuntu sudo python zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# ssh keys
# github key
export SSH_KEY_PATH="~/.ssh/github"

# ALIASES
 alias zshconfig="mate ~/.zshrc"
# PERSONAL ALIASES
 alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
