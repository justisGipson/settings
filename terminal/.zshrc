######################################
######################################
#                                    #
#            ZSH Config							 #
#                                    #
######################################
######################################

export ZSH="/Users/jgipson/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export UPDATE_ZSH_DAYS=7
ENABLE_CORRECTION="true"

# plugins
plugins=(
	battery
	colored-man-pages
	git
	thefuck
	zsh-autosuggestions
	zsh-syntax-highlighting
)

# Sources
source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Path for most things getting sources
export PATH="/usr/local/bin:$PATH"


# ruby shit
export PATH="/usr/local/opt/ruby/bin:$PATH"

POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-remotebranch git-tagname)

# Aliases
alias ls='exa -al --color=always --icons'

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias showall='defaults write com.apple.finder AppleShowAllFiles YES'
alias shownone='defaults write com.apple.finder AppleShowAllFiles NO'

alias brewup='brew update && brew upgrade && brew upgrade --cask && brew cleanup; brew doctor'
alias npmup='npm update -g'

# Bat
alias cat='bat'
export BAT_THEME="ansi-dark"

# this makes it work
eval $(thefuck --alias)

. /usr/local/etc/profile.d/z.sh

autoload -U +X bashcompinit && bashcompinit

#NVM stuff
export NVM_DIR="$HOME/.nvm"

# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

	autoload -Uz compinit
	compinit
fi
