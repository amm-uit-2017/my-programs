#!/bin/bash

wget https://raw.githubusercontent.com/amm-uit-2017/my-programs/master/prepare/vimrc
wget https://raw.githubusercontent.com/amm-uit-2017/my-programs/master/prepare/ayu.vim

mv vimrc ~/.vimrc

mkdir -p ~/.vim/colors
mv ayu.vim ~/.vim/colors/

echo "set bell-style none" >> /etc/inputrc
