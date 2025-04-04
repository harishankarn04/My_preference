#!/bin/bash

# Check if .bashrc or .zshrc exists
if [ -f "$HOME/.bashrc" ]; then
    # If .bashrc exists, update it (for Bash users)
    echo -e "\nPS1='%B%F{green}%n@%m%f:%F{cyan}%1~%b%f$ '\n" >> ~/.bashrc
    echo "export CLICOLOR=1" >> ~/.bashrc
    echo "export LSCOLORS=GxExcxHxFxhxhxhxhxcxcx" >> ~/.bashrc

elif [ -d "$HOME/.oh-my-zsh" ]; then
    # If Oh My Zsh is installed, add the lines to ~/.zshrc
    echo -e "\nPS1='%B%F{green}%n@%m%f:%F{cyan}%1~%b%f$ '\n" >> ~/.zshrc
    echo "export CLICOLOR=1" >> ~/.zshrc
    echo "export LSCOLORS=GxExcxHxFxhxhxhxhxcxcx" >> ~/.zshrc
elif [ -f "$HOME/.bash_profile" ]; then 
    # If Oh My Zsh is not installed, just add to the environment variables directly
    echo -e "PS1='%B%F{green}%n@%m%f:%F{cyan}%1~%b%f$ '\n" >> ~/.bash_profile
    echo "export CLICOLOR=1" >> ~/.bash_profile
    echo "export LSCOLORS=GxExcxHxFxhxhxhxhxcxcx" >> ~/.bash_profile
else 
    # If nothing is installed
    export PS1='%B%F{green}%n@%m%f:%F{cyan}%1~%b%f$ '
    export CLICOLOR=1
    export LSCOLORS=GxExcxHxFxhxhxhxhxcxcx
fi

