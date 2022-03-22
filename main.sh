#!/bin/bash   

# create alacritty config file and add theme to it 
mkdir ~/.config/alacritty
cp alacritty.yml ~/.config/alacritty  

# create nvim config file   
mkdir ~/.config/nvim
cp init.vim ~/.config/nvim 


# install vim plug to add vim plugins 
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Now you should be able to :PlugInstall in neovim


