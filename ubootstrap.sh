#!/bin/bash

if [ ! -f  ${HOME}/.gitconfig ]; then
	ln -s ${PWD}/gitconfig ${HOME}/.gitconfig
fi

if [ ! -f  ${HOME}/.tmux.conf ]; then
	ln -s ${PWD}/tmux.conf ${HOME}/.tmux.conf
fi

if [ ! -d  ${HOME}/src/spf13-vim ]; then
	git clone git@github.com:pietrushnic/spf13-vim.git ${HOME}/src/spf13-vim
fi

if [ ! -f  ${HOME}/.vimrc.before.local ]; then
	ln -s ${HOME}/src/spf13-vim/.vimrc.before.local ${HOME}/.vimrc.before.local
fi

if [ ! -f  ${HOME}/.vimrc.bundles.local ]; then
	ln -s ${HOME}/src/spf13-vim/.vimrc.bundles.local ${HOME}/.vimrc.bundles.local
fi

if [ ! -f  ${HOME}/.vimrc.local ]; then
	ln -s ${HOME}/src/spf13-vim/.vimrc.local ${HOME}/.vimrc.local
fi

if [ ! -x  ${HOME}/.spf13-vim-3 ]; then
	ln -s ${HOME}/src/spf13-vim ${HOME}/.spf13-vim-3
        ${HOME}/.spf13-vim-3/bootstrap.sh
fi

if [ ! -d  ${HOME}/src/oh-my-zsh ]; then
	git clone git@github.com:pietrushnic/oh-my-zsh.git ${HOME}/src/oh-my-zsh
fi

if [ ! -d  ${HOME}/.oh-my-zsh ]; then
	ln -s /home/${USER}/src/oh-my-zsh ${HOME}/.oh-my-zsh
fi

if [ ! -f  ${HOME}/.zshrc ]; then
	ln -s /home/${USER}/src/oh-my-zsh/zshrc ${HOME}/.zshrc
fi

