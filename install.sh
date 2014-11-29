#!/bin/bash
#Filename: install.sh
#Last modified: 2012-10-09 23:08
#Author: xqx cp from jiang chen
#Description: vim config install

if [ -d ~/.vim ];then
	mv ~/.vim ~/.vim_backup
fi

cp -r . ~/.vim
cp ~/.vim/_vimrc ~/.vimrc

if [ ! -f /usr/local/bin/ctags ]; then
	tar -zxf ctags-5.8.tar.gz
	cd ctags-5.8
	./configure
	make
	sudo make install
fi

exit 0
