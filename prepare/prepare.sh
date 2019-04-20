#!/bin/bash

rc=$(curl -k https://raw.githubusercontent.com/amm-uit-2017/my-programs/master/prepare/vimrc)
wget https://raw.githubusercontent.com/amm-uit-2017/my-programs/master/prepare/ayu.vim

echo "$rc" >> /etc/vim/vimrc

mkdir -p /etc/vim/colors
mv ayu.vim /etc/vim/colors/

echo "set bell-style none" >> /etc/inputrc
