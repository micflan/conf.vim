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

echo "Installing Vim Bundles ... "
vim +BundleInstall +qall
echo "Done."
