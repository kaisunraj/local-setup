# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
export PATH=/opt/homebrew/bin:$PATH
eval "$(starship init zsh)"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    aws
    docker-compose 
    dotenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# for NPM local
export PATH=~/.npm-global/bin:$PATH

# for pyenv
eval "$(pyenv init -)"

# autocomplete config
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="bold"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)source /Users/kaisun.raj1/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# for poetry
export PATH="$HOME/.local/bin:$PATH"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kaisun.raj1/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kaisun.raj1/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/kaisun.raj1/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kaisun.raj1/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# JS Proxies On and Off
proxy_off() {
unset http_proxy
unset https_proxy
unset no_proxy
unset HTTP_PROXY
unset HTTPS_PROXY
unset NO_PROXY
unset VAGRANT_HTTP_PROXY
unset VAGRANT_HTTPS_PROXY
unset VAGRANT_APT_PROXY
unset VAGRANT_GIT_PROXY
unset VAGRANT_NO_PROXY
}
proxy_on() {
export HTTP_PROXY=http://a-proxy-p.bc.jsplc.net:8080
export HTTPS_PROXY=http://a-proxy-p.bc.jsplc.net:8080
export NO_PROXY=localhost,127.0.0.1,.dev,.internal,.local,.jsplc.net,.jstest1.net,.jstest2.net,.jstest3.net,.devjsplc.net,.jhblkf.jsgrp,.blk.js.com,.ishapay.net,.iphapay.net,.client.secure-payment-processing.com,.client.test-secure-payment-processing.com,.sfc-ie-ds1-customer-stage.s3.eu-west-1.amazonaws.com
# Some tools want the variables in lowercase
export http_proxy=$HTTP_PROXY
export https_proxy=$HTTPS_PROXY
export no_proxy=$NO_PROXY
# Proxy config for vagrant-proxyconf
export VAGRANT_HTTP_PROXY=$HTTP_PROXY
export VAGRANT_HTTPS_PROXY=$HTTPS_PROXY
export VAGRANT_APT_PROXY=$HTTP_PROXY
export VAGRANT_GIT_PROXY=$HTTP_PROXY
export VAGRANT_NO_PROXY=$NO_PROXY
}