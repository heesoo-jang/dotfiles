ZSH=$HOME/.zsh

HISTFILE=$HOME/.history
HISTSIZE=10000
SAVEHIST=10000

export TERM=xterm-256color
export LANG=en_US.UTF-8

export PATH=$HOME/anaconda3/bin:$PATH

# virtualenvs path
# export WORKON_HOME=~/.virtualenvs
# source /usr/local/bin/virtualenvwrapper.sh

#####################
## Antigen configs ##
#####################
# Load Antigen
source $ZSH/antigen.zsh

antigen use oh-my-zsh

# Load various lib files
antigen bundle robbyrussell/oh-my-zsh lib/

# Antigen Theme
# antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# POWER LEVEL 9k
antigen theme https://github.com/bhilburn/powerlevel9k powerlevel9k
# POWERLEVEL9K_MODE='awesome-patched'

POWERLEVEL9K_DISABLE_PROMPT=true
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="blue"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv anaconda)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Antigen Bundles
antigen bundle common-aliases
antigen bundle git
antigen bundle heroku
antigen bundle command-not-found
antigen bundle extract
antigen bundle tmuxinator
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle web-search
antigen bundle chucknorris

# For SSH, starting ssh-agent is annoying
# antigen bundle ssh-agent

# Node Plugins
# antigen bundle coffee
# antigen bundle node
# antigen bundle npm
# antigen bundle lukechilds/zsh-better-npm-completion

# Python Plugins
# antigen bundle python
# antigen bundle virtualenv

# Tell antigen that you're done.
antigen apply
