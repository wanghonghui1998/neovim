# install neovim
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# install vim-plug
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# if connection failed 
cp ./plug.vim  "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim

# init.vim 
if [ ! -d "${HOME}/.config/nvim" ]; then
    mkdir ~/.config/nvim
fi
cp ./init.vim ~/.config/nvim/init.vim
