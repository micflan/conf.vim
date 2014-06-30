#!/bin/bash

# Check the user has Git installed
if ! hash git 2>/dev/null; then
    echo -e "\e[91mError: Git is required but not installed."
    exit;
fi


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
timestamp=$(date +%s)

# Backup
echo -e "\n\e[36mBacking up existing config... \e[2;49m"
if [ ! -d $DIR/backup ]; then
    mkdir -v $DIR/backup
fi
mkdir -v $DIR/backup/$timestamp
mv -v ~/.vim* $DIR/backup/$timestamp/
echo -e "\e[92mDone.\n"

# Symlinks
if [ ! -f $DIR/vimrc.local.$HOSTNAME ]; then
    touch $DIR/vimrc.local.$HOSTNAME
fi
echo -e "\e[36mCreating Symlinks... \e[2;49m"
ln -sv $DIR/vim ~/.vim
ln -sv $DIR/vimrc ~/.vimrc
ln -sv $DIR/vimrc.local.$HOSTNAME ~/.vimrc.local
ln -sv $DIR/vimrc.bundles ~/.vimrc.bundles
ln -sv $DIR/vimrc.bundles.local ~/.vimrc.bundles.local
echo -e "\e[92mDone.\n"

# Vundle
echo -e "\e[36mInstalling Vundle... \e[2;49m"
if [ ! -d ~/.vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    echo -e "\e[92mDone.\n"
else
    echo -e "\e[92mVundle already installed.\n"
fi

# Bundles
echo -e "\e[36mInstalling Bundles... \e[2;49m"
vim +BundleInstall +qall
echo -e "\e[92mDone.\n"

# All done!
echo -e "\e[0mEnjoy Vim!\n"
