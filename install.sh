#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

timestamp=$(date +%s)

echo "Backing up existing config ... "
mkdir $DIR/backup
mkdir $DIR/backup/$timestamp
mv ~/.vim* $DIR/backup/$timestamp/
echo "Done."

echo "Creating Symlinks ... "
ln -s $DIR/vim ~/.vim
ln -s $DIR/vimrc ~/.vimrc
ln -s $DIR/vimrc.local ~/.vimrc.local
ln -s $DIR/vimrc.bundles ~/.vimrc.bundles
ln -s $DIR/vimrc.bundles.local ~/.vimrc.bundles.local
echo "Done."

echo "Installing Vundle ... "
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "Done."

echo "Installing Bundles ... "
vim +BundleInstall +qall
echo "Done."
