#!/bin/bash

# Find package manager and install required packages
which apt > /dev/null 2>&1

if [ $? -eq 0 ]
then
    sudo apt-get install zsh powerline curl vim git
fi

which yum > /dev/null 2>&1

if [ $? -eq 0 ]
then
    sudo yum install zsh powerline curl vim git
fi

# Setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

source $HOME/.zshrc

sh -c "$(cd $ZSH_CUSTOM/plugins && git clone https://github.com/chrissicool/zsh-256color)"
