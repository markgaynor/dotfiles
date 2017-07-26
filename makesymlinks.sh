#!/bin/bash

dir=~/dotfiles # dotfiles directory
files="bashrc vimrc vim zshrc oh-my-zsh" # list of files/folders to symlink in homedir

cd $dir
for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

