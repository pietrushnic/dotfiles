#!/bin/bash
ln -s ${PWD}/gitconfig ${HOME}/.gitconfig
ln -s ${PWD}/tmux.conf ${HOME}/.tmux.conf
git clone git@github.com:pietrushnic/spf13-vim.git ${HOME}/src/spf13-vim
ln -s ${HOME}/src/spf13-vim/.vimrc.before.local ${HOME}/.vimrc.before.local
ln -s ${HOME}/src/spf13-vim/.vimrc.bundles.local ${HOME}/.vimrc.bundles.local
ln -s ${HOME}/src/spf13-vim/.vimrc.local ${HOME}/.vimrc.local
ln -s ${HOME}/src/spf13-vim ${HOME}/.spf13-vim-3
${HOME}/.spf13-vim-3/bootstrap.sh
git clone git@github.com:pietrushnic/oh-my-zsh.git
ln -s /home/${USER}/src/oh-my-zsh ~/.oh-my-zsh
ln -s /home/${USER}/src/oh-my-zsh/zshrc ~/.zshrc
