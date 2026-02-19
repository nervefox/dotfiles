#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set PS1 prompt
PS1='[\u@\h \W]\$ '

# Function for going up X directories (ex: up 2, up 4, etc)
up() { cd $(eval printf '../'%.0s {1..$1}); }

### History settings

# Set ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# Appent to history file instead of overwriting
shopt -s histappend

### Set XDG user directories variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

### Aliases

# Adds confirmation before overwriting files
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ls aliases
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -l --group-directories-first'

# misc
alias grep='grep --color=auto'
alias vim='nvim'

### Make programs use XDG directiores for dotfiles
export HISTFILE="$XDG_STATE_HOME"/bash/history
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
