# Vim configuration
Welcome to my Vim configuration repository! 🎉 
## Features
- Plugin Management: Configured with `Vundle` for easier management.
- Syntax Highlighting: Syntax highlighting for multiple programming languages.
- Code Completion: Seamless code completion with `YouCompleteMe`.
- Themes: Pre-configured themes for an aesthetic coding environment.
- Custom Keybindings: Simplified and efficient key mappings for better usability.

## Installation
1. Install Cmake, Vim and Python:
```
sudo apt install build-essential cmake vim-nox python3-dev
```
2. Install mono-complete, go, node, java and npm:
```
sudo apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm 
```
3.  Setup Vundle:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

4. Clone the repository:
```
git clone https://github.com/olofmagn/vim-config.git ~/Projects/
```

5. Copy the vim-config:
```
cp ~/Projects/vim-setup ~/.vim/vimrc
```

6. Install YouCompleteMe utility:
```
cd ~/.vim/bundle/YouCompleteMe
python3 install.py (--all can be used but probably not needed)
```

7. Install plugins: Launch vim and issue: 
`PluginInstall` or directly from commandline: `vim +PluginInstall +qall`

8. Ready to vim!
Launch `vim` and test different syntax in programming languages for autocompletion.

An alternative installation process is to install using the provided script for automating the above process:
```
./install.sh (make sure you run this with administrator privilege)
```

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
