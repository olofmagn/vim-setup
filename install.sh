#!/bin/bash
echo "Starting installation script"
export PIP_BREAK_SYSTEM_PACKAGES=1
pip install --user cmake
apt install build-essential cmake vim-nox python3-dev -y
apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm -y
echo "Creating vim bundle directory"
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
echo "Cloning github directories"
git clone https://github.com/VundleVim/Vundle.vim.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/rstacruz/sparkup.git
git clone https://github.com/ycm-core/YouCompleteMe.git
echo "Installing YouCompleteMe"
cd YouCompleteMe
git submodule update --init --recursive
python3 install.py # --all can be enabled here if needed
# Make sure that we do not overwrite current configuration
echo "Backing up the current vimrc in same directory to avoid unintended overwrite"
mv ~/.vimrc backup-vimrc
echo "Copying vim-config into ~/.vimrc"
cp ~/Projects/vim-setup/vim-config ~/.vimrc
export PIP_BREAK_SYSTEM_PACKAGES=0
echo "Done with installation script. Exiting"
