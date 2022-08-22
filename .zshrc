# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=7
COMPLETION_WAITING_DOTS="true"

#THEME
ZSH_THEME="spaceship"

#PLUGINS
plugins=(gitignore git z virtualenv ubuntu sudo python 
	zsh-syntax-highlighting vscode alias-finder command-not-found 
	zsh-autosuggestions colored-man-pages web-search tmux timer)

export ZSH_ALIAS_FINDER_AUTOMATIC=true
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $ZSH/oh-my-zsh.sh

# ALIASES
alias zshconfig="nvim ~/.zshrc"
alias open="xdg-open"

# PERSONAL ENVIRONMENT VARIABLES
source ~/.env.zsh

# PRIVATE KEYS
source ~/.keys.zsh
