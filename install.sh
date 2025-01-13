#!/bin/bash
echo "Starting installation script"
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/rstacruz/sparkup.git
git clone https://github.com/ycm-core/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
pip install --user cmake
apt install build-essential cmake vim-nox python3-dev
apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm
python3 install.py --all
source ~/.vimrc
vim +PluginInstall +qall
echo "Done with installation script. Exiting"
