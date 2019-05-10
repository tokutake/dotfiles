" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-rails'

" Initialize plugin system
call plug#end()

set expandtab
set shiftwidth=2
set number
set incsearch

" Windows navigation
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j

" fuzzy file finder setting
let g:ctrlp_map = ',t'
nnoremap <silent> ,t :CtrlP<CR>
