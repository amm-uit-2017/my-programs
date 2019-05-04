#!/bin/bash

#################### Functions ####################
function install_programs (){
	echo "########## Installing Programs ##########";
	echo "Net-tools, Wget, Vim, Git, Tcpdump, NTP-client will be installed."

	yum install wget vim net-tools git tcpdump ntp

	sleep 1
}

function adjust_time (){
	echo "########## Adjusting Time ##########";

	ln -sf /usr/share/zoneinfo/Asia/Yangon /etc/localtime

	sleep 1
}

function vim_theme (){
	echo "########## Installing Vim Theme #########"

	wget https://raw.githubusercontent.com/amm-uit-2017/my-programs/master/prepare/vimrc
	wget https://raw.githubusercontent.com/amm-uit-2017/my-programs/master/prepare/ayu.vim

	mv vimrc ~/.vimrc

	mkdir -p ~/.vim/colors
	mv ayu.vim ~/.vim/colors/

	echo "set bell-style none" >> /etc/inputrc
	
	sleep 1
}

function do_all (){

	install_programs
	adjust_time
	vim_theme

}

function dun_know (){
	echo "########## I don't understand #########"
}

function quit (){
	echo "########## Exiting #########"
}

while true; do

	cat << EOF


	Choose Your Desire Option
	===========================================
	(1) Install Basic Packages
	(2) Adjust Time
	(3) Configuring Vim Theme
	(4) Do All Steps
	(0) Quit

EOF

	################### Accept Input ######################
	echo -n "Type the number: "
	read input

	case $input in
		1) install_programs ;;
		2) adjust_time ;;
		3) vim_theme ;;
		4) do_all ;;
		0) quit quit; break;;
		*) dun_know ;;

	esac

done
