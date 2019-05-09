# install oh-my-zsh
ZSH=~/.oh-my-zsh
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

brew cask install visual-studio-code

# install code command
ln -s /usr/local/bin/code "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"
