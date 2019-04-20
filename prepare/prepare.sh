#!/bin/bash

rc=$(curl -k https://s3-ap-southeast-1.amazonaws.com/amm-program/.vimrc)
wget https://s3-ap-southeast-1.amazonaws.com/amm-program/ayu.vim

echo "$rc" >> /etc/vim/vimrc

mkdir -p /etc/vim/colors
mv ayu.vim /etc/vim/colors/

echo "set bell-style none" >> /etc/inputrc
