# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=7
COMPLETION_WAITING_DOTS="true"

############### VIRTUALENVWRAPPER CONFIGURATION ##################
# Default location of virtual environment directories
export  workon_home=$HOME/.virtualenvs

# Default python version to use with virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3 '
export PROJECT_HOME="$HOME/projects"
source `which virtualenvwrapper.sh`

#THEME
ZSH_THEME="spaceship"
source /usr/share/powerline/bindings/zsh/powerline.zsh

#PLUGINS
plugins=(gitignore git z virtualenvwrapper virtualenv ubuntu sudo python 
	zsh-syntax-highlighting vscode alias-finder command-not-found 
	zsh-autosuggestions colored-man-pages web-search tmux timer)

export ZSH_ALIAS_FINDER_AUTOMATIC=true
export ZSH_TMUX_AUTOSTART=true
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $ZSH/oh-my-zsh.sh

# ALIASES
alias zshconfig="nvim ~/.zshrc"
alias open="xdg-open"
alias uclmvpn="sudo openconnect --protocol=gp portal.vpn.uclm.es"

# PERSONAL ENVIRONMENT VARIABLES
source ~/.env.zsh

# PRIVATE KEYS
source ~/.keys.zsh
