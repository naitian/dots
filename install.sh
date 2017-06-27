ln -s $PWD/vimrc/.vim $HOME/.vim
ln -s $PWD/tmux/.tmux $HOME/.tmux

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

ln -s $PWD/vimrc/.vimrc $HOME/.vimrc

ln -s $PWD/tmux/.tmux.conf $HOME/.tmux.conf

vim +PlugInstall +qall
tmux source ~/.tmux.conf

cp $PWD/vimrc/.vim/colors/airline-scheme.vim $PWD/vimrc/.vim/plugged/vim-airline-themes/autoload/airline/themes/scheme.vim

# Compile YouCompleteMe
cd ~/.vim/plugged/YouCompleteMe
./install.py --all
