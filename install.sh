mkdir -p $HOME/.vim
mkdir -p $HOME/.tmux

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

ln -s $PWD/vimrc/.vimrc $HOME/.vimrc
ln -s $PWD/vimrc/.vim $HOME/.vim

ln -s $PWD/tmux/.tmux.conf $HOME/.tmux.conf
ln -s $PWD/tmux/.tmux $HOME/.tmux

vim +PluginInstall +qall
tmux source ~/.tmux.conf
