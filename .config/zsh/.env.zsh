#!/bin/sh
# Run by zsh on startup

hostname=$(hostname)

# Adds ~/bin to $PATH
export PATH="$PATH:$(du "$HOME/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Default programs:
export EDITOR="nvim"
export SUDO_EDITOR="nvim"
export TERMINAL="alacritty"
export TERM="alacritty"
export BROWSER="firefox"
export READER="zathura"

# Locations
export ENV_FILE="$(pwd)/.env.zsh"
export ALIASES="$(pwd)/.aliases.zsh"

# $HOME Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE=-
export GTK2_RC_FILES="$HOME/.config/gtk-2/gtkrc-2.0"
export WGETRC="$HOME/.config/wget/wgetrc"
export ZDOTDIR="$HOME/.config/zsh"
export _Z_DATA="$XDG_DATA_HOME/z"

export SESSIONS="$XDG_CACHE_HOME/nvim/sessions"
