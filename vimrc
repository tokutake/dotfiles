" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

set expandtab
set shiftwidth=2
