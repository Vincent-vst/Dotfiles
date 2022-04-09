#!/bin/bash   

# install kitty  
sudo pacman -S kitty 
# create config directory for kitty if not already 
dir=~/.config/kitty
if [[ ! -e $dir ]]; then
    mkdir $dir
elif [[ ! -d $dir ]]; then
    echo "$dir already exists but is not a directory" 1>&2
fi

#copy this config file to it 
cp ./kitty.conf ~/.config/kitty/

# create nvim config file   
mkdir ~/.config/nvim
cp init.vim ~/.config/nvim 

# install vim plug to add vim plugins 
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Now you should be able to :PlugInstall in neovim
# TODO : install Coc-plugins 

# installing fish and adding it as default shell  
sudo pacman -S fish 
chsh -s /usr/bin/fish  



