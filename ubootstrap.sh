#!/bin/bash
ln -s ${PWD}/gitconfig ${HOME}/.gitconfig
git clone https://github.com/pietrushnic/spf13-vim.git ${HOME}/src/spf13-vim
ln -s ${HOME}/src/spf13-vim/.vimrc.before.local ${HOME}/.vimrc.before.local
ln -s ${HOME}/src/spf13-vim/.vimrc.bundles.local ${HOME}/.vimrc.bundles.local
${HOME}/src/spf13-vim/bootstrap.sh
