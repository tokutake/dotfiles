# install oh-my-zsh
ZSH=~/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git "$ZSH"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
ln -sf $HOME/dotfiles/zshrc $HOME/.zshrc

# set up git
ln -sf $HOME/dotfiles/git/gitconfig $HOME/.gitconfig

# set up tmux
ln -sf $HOME/dotfiles/tmux.conf $HOME/.tmux.conf

# set up vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sf $HOME/dotfiles/vimrc $HOME/.vimrc

mkdir -p ~/.config/nvim/init.vim
ln -sf $HOME/dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim

# install brew packages
for package in $(cat brew/packages)
do
  brew install $package
done

# install pip packages
for package in $(cat pip.txt)
do
  pip3 install $package
done
