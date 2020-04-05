#!/bin/bash

[ -d $HOME/bin ] && mv $HOME/bin . && ln -s $HOME/repositories/dotfiles/bin $HOME/bin/ && echo "Success: bin"
[ -d $HOME/.config ] && mv $HOME/.config . && ln -s $HOME/repositories/dotfiles/.config $HOME/.config/ && echo "Success: .config"
[ -d $HOME/.local ] && mv $HOME/.local . && ln -s $HOME/repositories/dotfiles/.local $HOME/.local/ && echo "Success: .local"
[ -d $HOME/.local ] && mv $HOME/.local . && ln -s $HOME/repositories/dotfiles/.local $HOME/.local/ && echo "Success: .local"
[ -f $HOME/.xinitrc ] && mv $HOME/.xinitrc . && ln -s $HOME/repositories/dotfiles/.xinitrc $HOME/.xinitrc && echo "Success: .xinitrc"
[ -f $HOME/.Xresources ] && mv $HOME/.Xresources . && ln -s $HOME/repositories/dotfiles/.Xresources $HOME/.Xresources && echo "Success: .Xresources"
[ -f $HOME/.zshenv ] && mv $HOME/.zshenv . && ln -s $HOME/repositories/dotfiles/.zshenv $HOME/.zshenv && echo "Success: .zshenv"
