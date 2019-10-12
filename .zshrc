# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export EDITOR=vim

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
# ZSH_THEME="spaceship"
# ZSH_THEME="geometry"
# ZSH_THEME="bullet-train"
# ZSH_THEME="materialshell"

ZSH_THEME="powerlevel9k/powerlevel9k"
source $HOME/.zsh-powerlevel9k
# source $HOME/.zsh-powerlevel9k-simple
# source $HOME/.zsh-powerlevel9k-rjorgensons
# source $HOME/.zsh-powerlevel9k-mavam  

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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


# Edit line in VIM
autoload -U edit-command-line
zle -N edit-command-line
bindkey "^x^x" edit-command-line


# =============================================================================
#                                Key Bindings
# =============================================================================

# Common CTRL bindings.
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^f" forward-word
bindkey "^b" backward-word
bindkey "^k" kill-line
bindkey "^d" delete-char
bindkey "^y" accept-and-hold
bindkey "^w" backward-kill-word
bindkey "^u" backward-kill-line
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^F" history-incremental-pattern-search-forward

# Do not require a space when attempting to tab-complete.
bindkey "^i" expand-or-complete-prefix

# Fixes for alt-backspace and arrows keys
# bindkey '^[^?' backward-kill-word
# bindkey "^[[1;5C" forward-word
# bindkey "^[[1;5D" backward-word
# bindkey "^[[C" forward-word
# bindkey "^[[D" backward-word

# bindkey "^[^[[D" backward-word
# bindkey "^[^[[C" forward-word

# bindkey "[D" backward-word
# bindkey "[C" forward-word
# bindkey "^[a" beginning-of-line
# bindkey "^[e" end-of-line


## Emulate tcsh's backward-delete-word
#tcsh-backward-kill-word () {
#    local WORDCHARS="${WORDCHARS:s#/#}"
#    zle backward-kill-word
#}
#zle -N tcsh-backward-kill-word

# https://github.com/sickill/dotfiles/blob/master/.zsh.d/key-bindings.zsh
# tcsh-backward-word () {
#   local WORDCHARS="${WORDCHARS:s#./#}"
#   zle emacs-backward-word
# }
# zle -N tcsh-backward-word
# bindkey '\e[1;3D' tcsh-backward-word
# bindkey '\e^[[D' tcsh-backward-word # tmux

# tcsh-forward-word () {
#   local WORDCHARS="${WORDCHARS:s#./#}"
#   zle emacs-forward-word
# }
# zle -N tcsh-forward-word
# bindkey '\e[1;3C' tcsh-forward-word
# bindkey '\e^[[C' tcsh-backward-word # tmux

# tcsh-backward-delete-word () {
#   local WORDCHARS="${WORDCHARS:s#./#}"
#   zle backward-delete-word
# }
# zle -N tcsh-backward-delete-word
# bindkey "^[^?" tcsh-backward-delete-word # urxvt

# =============================================================================
#                                 Completions
# =============================================================================

# Autocompletion for Make.
# zstyle ':completion:*:make:*:targets' call-command true

# zstyle ':completion:*' group-name ''
# zstyle ':completion:*:descriptions' format '%B%d%b'

# zstyle ':completion:*:make::' tag-order targets

zstyle ':completion:*:make:*' tag-order targets
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%B%d%b'

# zstyle ':completion:*' rehash true
# #zstyle ':completion:*' verbose yes
# #zstyle ':completion:*:descriptions' format '%B%d%b'
# #zstyle ':completion:*:messages' format '%d'
# #zstyle ':completion:*:warnings' format 'No matches for: %d'
# #zstyle ':completion:*' group-name ''

# # case-insensitive (all), partial-word and then substring completion
# zstyle ":completion:*" matcher-list \
#   "m:{a-zA-Z}={A-Za-z}" \
#   "r:|[._-]=* r:|=*" \
#   "l:|=* r:|=*"

# zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS}

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    aws
    brew
    celery
    compleat
    django
    gitfast
    # git
    git-extras
    npm
    pip
    python
    redis-cli
    tmux
    # vi-mode
    zsh-256color
    zsh-syntax-highlighting
    zsh-better-npm-completion
)

ZSH_DISABLE_COMPFIX=true
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Aliases
alias zsh-config="vim ~/.zshrc"
alias zsh-theme-config="vim ~/.zsh-powerlevel9k"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias ll="ls -laG"

# pyenv and pyenv-virtualevn
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi