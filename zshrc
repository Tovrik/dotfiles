# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=~/.nvm/versions/node/v8.9.4/bin:$PATH
# Aliases
alias pm2-start='pm2 start ~/ecosystem.config.js'
alias pm2-stop='pm2 stop ~/ecosystem.config.js'
alias refresh='cd ~ && ./refresh-all.sh'
alias dux:ap='dux up pronode portfolio-comparator compliance-cloud-node integrations-service rap -d'
# Path to your oh-my-zsh installation.
export ZSH=/Users/stefanpeterson/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
prompt_context() {}

# Put npm on the PATH
# export PATH=/usr/local/share/npm/bin:$PATH

# Key Mappings
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "[A" beginning-of-line
bindkey "[B" end-of-line
DISABLE_CORRECTION="false"

# source .bash_profile to gain access to any PATH variables placed there
source ~/.bash_profile

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

eval $(thefuck --alias)
