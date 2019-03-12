#!/usr/bin/env bash

#TODO change intil.el to only load file if they exist, then no touching required
cd $HOME/.spacemacs.d/user/
touch init.el layers.el user-config.el user-init.el

brew install ispell

npm install -g tern

brew cask install eclipse-java
cd $TMP
eclipse_dir='/Applications/Eclipse Java.app/'
eclim_version=2.8.0
eclim=eclim_$eclim_version.bin
wget https://github.com/ervandew/eclim/releases/download/$eclim_version/$eclim
chmod u+x $eclim
./$eclim \
  --yes \
  --eclipse="$eclipse_dir" \
  --vimfiles=$HOME/.vim \
  --plugins=jdt
