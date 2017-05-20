ln -s $PWD/vimrc/.vim $HOME/.vim
ln -s $PWD/tmux/.tmux $HOME/.tmux

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

ln -s $PWD/vimrc/.vimrc $HOME/.vimrc

ln -s $PWD/tmux/.tmux.conf $HOME/.tmux.conf

vim +PluginInstall +qall
tmux source ~/.tmux.conf

# Compile YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.py --all
