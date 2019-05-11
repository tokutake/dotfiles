# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load
ZSH_THEME="random"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias gs="git status"
alias gps="git push"
alias gpsh="git push -u origin `git rev-parse --abbrev-ref HEAD`"
alias gdc="git diff --cached"

# Set default less option
# Imported from https://github.com/sorin-ionescu/prezto/blob/master/runcoms/zprofile
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set up rbenv.
eval "$(rbenv init -)"
