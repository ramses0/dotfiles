#!/bin/sh
#
# VIM
#
# This installs useful vim stuff from all over

# check if not exists
if [ ! -f ~/.vim ] ; then
	# pathogen
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
		curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

	# fugitive
	FUGITIVE_DIR=~/.vim/bundle/vim-fugitive
	mkdir -p ~/.vim/bundle
	test -f $FUGITIVE_DIR || git clone https://github.com/tpope/vim-fugitive.git $FUGITIVE_DIR
	vim -u NONE -c "helptags vim-fugitive/doc" -c q

	# todo.txt
	git clone git://github.com/freitass/todo.txt-vim.git ~/todo-txt
	cp -R ~/todo-txt/* ~/.vim
    rm -rf ~/todo-txt
fi

# if test ! $(which brew)
# then
#   echo " git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
#   echo "  Installing Homebrew for you."
# 
#   # Install the correct homebrew for each OS type
#   if test "$(uname)" = "Darwin"
#   then
#     ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#   elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
#   then
#     ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
#   fi
# 
# fi
#exit 0
