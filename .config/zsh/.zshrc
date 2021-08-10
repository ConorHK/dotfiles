# Source environment variables
source $HOME/.config/zsh/.env.zsh

# Source aliases
source $ZDOTDIR/.aliases.zsh

# Source functions
 fpath=($ZDOTDIR/functions $fpath);
 autoload -U $fpath[1]/*(.:t)

# set title on terminal spawn
precmd () {
    print -Pn "\e]0;%~\a"
}

# set title on command execution
preexec () {
    print -Pn "\e]0;$1\a"
}

# Source plugins
ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
source $ZDOTDIR/.zsh_plugins.sh
source $ZDOTDIR/.prompt_config.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch
unsetopt beep

# ignore case in directory/file auto-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select

# key bindings
bindkey -v
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Load Z
. $HOME/bin/z.sh

# Load compinit
autoload -Uz compinit
compinit

# Make cd work like pushd
setopt auto_pushd
