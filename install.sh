# install oh-my-zsh
SH=~/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git "$ZSH"
ln -sf $HOME/dotfiles/zshrc $HOME/.zshrc

# set up vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sf $HOME/dotfiles/vimrc $HOME/.vimrc

# install brew packages
for package in $(cat brew/packages)
do
  brew install $package
done
