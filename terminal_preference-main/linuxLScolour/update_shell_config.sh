#!/bin/bash

# Check if .bashrc or .zshrc exists
if [ -f "$HOME/.bashrc" ]; then
    # If .bashrc exists, update it (for Bash users)
    echo -e "\nPS1='%B%F{green}%n@%m%f:%F{blue}%1~%b%f$ '\n" >> ~/.bashrc
    echo "export CLICOLOR=1" >> ~/.bashrc
    echo 'export LSCOLORS="di=01;34:ln=01;36:ex=01;32:so=01;35:pi=33:bd=33:cd=33:su=37;41:sg=30;43:tw=30;42:ow=33:*.tar=01;31:*.zip=01;31:*.txt=00:*.pdf=01;31:*.jpg=01;35:*.png=01;35"' >> ~/.bashrc
elif [ -f "$HOME/.zshrc" ]; then
    # If .zshrc exists, update it (for Zsh users)
    echo -e "\nPS1='%B%F{green}%n@%m%f:%F{blue}%1~%b%f$ '\n" >> ~/.zshrc
    echo "export CLICOLOR=1" >> ~/.zshrc
    echo 'export LSCOLORS="di=01;34:ln=01;36:ex=01;32:so=01;35:pi=33:bd=33:cd=33:su=37;41:sg=30;43:tw=30;42:ow=33:*.tar=01;31:*.zip=01;31:*.txt=00:*.pdf=01;31:*.jpg=01;35:*.png=01;35"' >> ~/.zshrc
elif [ -d "$HOME/.oh-my-zsh" ]; then
    # If Oh My Zsh is installed, add the lines to ~/.zshrc
    echo -e "\nPS1='%B%F{green}%n@%m%f:%F{cyan}%1~%b%f$ '\n" >> ~/.zshrc
    echo "export CLICOLOR=1" >> ~/.zshrc
    echo "export LSCOLORS=GxExcxHxFxhxhxhxhxcxcx" >> ~/.zshrc
else
    # If nothing is installed
    export PS1='%B%F{green}%n@%m%f:%F{cyan}%1~%b%f$ '
    export CLICOLOR=1
    export LSCOLORS=GxExcxHxFxhxhxhxhxcxcx
fi

