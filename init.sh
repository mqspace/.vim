#!/bin/sh
if !(test -d ~/.vim/colors)
then
    mkdir -p ~/.vim/colors
    echo haha
fi
cp -r * ~/.vim/.
user=$(whoami)
if !(test -e ~/.vimrc)
then
	echo source ~/.vim/vimrc >> ~/.vimrc
else
	if !(grep -Fxq "source /home/$user/.vim/vimrc" ~/.vimrc)
	then
		echo source ~/.vim/vimrc >> ~/.vimrc
	fi
fi
