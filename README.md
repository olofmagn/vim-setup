# Vim configuration
Welcome to my Vim configuration repository! 🎉 
## Features
- Plugin Management: Configured with `Vundle` for easier management.
- Syntax Highlighting: Syntax highlighting for multiple programming languages.
- Code Completion: Seamless code completion with `YouCompleteMe`.
- Themes: Pre-configured themes for an aesthetic coding environment.
- Custom Keybindings: Simplified and efficient key mappings for better usability.
- Three different installation approaches depending on your needs.

## Installation (manual approach)
1. Install Cmake, Vim and Python:
```
apt install build-essential cmake vim-nox python3-dev
```
2. Install mono-complete, go, node, java, npm and git:
```
apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm git
```
3.  Setup Vundle and other plugins:
```
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/rstacruz/sparkup.git
git clone https://github.com/ycm-core/YouCompleteMe.git
git clone https://github.com/VundleVim/Vundle.vim.git 
```

4. Clone the repository:
```
mkdir ~/Projects (create a project folder in user home directory)
git clone https://github.com/olofmagn/vim-setup.git ~/Projects/vim-setup
```

5. Copy the vim-config:
```
mv ~/.vimrc backup-vimrc (avoid unintended overwrite)
cp ~/Projects/vim-setup/vim-config ~/.vimrc
```

6. Install YouCompleteMe utility for code completion:
```
cd ~/.vim/bundle/YouCompleteMe
python3 install.py (--all can be used but probably not needed)
```

7. To reload your current configuration: Launch vim and issue:
```
:source ~/.vimrc
```

8. Ready to vim!
Launch `vim` and test different syntax in programming languages for autocompletion.

## Installation via shellscript
An alternative installation process is to install using the provided script for automating the above process:
```
./install.sh 
```

## Installation via plugins (prefer approach and if you do not have heavy network restrictions)
Plugins can also be updated and installed directly via plugin manager `Vundle`:

```
apt install build-essential cmake vim-nox python3-dev git
apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim.git
git clone https://github.com/olofmagn/vim-setup.git ~/Projects/vim-setup
mv ~/.vimrc backup-vimrc (avoid overwrite on current config)
cp ~/Projects/vim-setup/vim-config ~/.vimrc
vim +PluginInstall +qall
```

Launch `vim` and issue: `:source ~/.vimrc` for reloading.

## Requirements
- Vim 8.0+.
- Git (for plugin management).
- Python (if using plugins like YouCompleteMe).

## Usage
- Open with vim and start coding.
- Explore the `~/.vimrc` file to add or remove plugins.
- Customize the configuration to match your own preferences.

## Contributing
Feel free to submit issues, suggest features, or open pull requests to improve this configuration.

## License
This repository is open-sourced under the MIT License.

Happy Vimming! ✨
