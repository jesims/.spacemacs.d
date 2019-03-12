#!/usr/bin/env bash
#TODO change intil.el to only load file if they exist, then no touching required
cd $HOME/.spacemacs.d/user/
touch init.el layers.el user-config.el user-init.el
brew install ispell
npm install -g tern
