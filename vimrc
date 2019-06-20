" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-rails'
Plug 'rking/ag.vim'

" Initialize plugin system
call plug#end()

set expandtab
set shiftwidth=2
set number
set incsearch
set noswapfile
set ignorecase

" Windows navigation
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j

" fuzzy file finder setting
nnoremap <silent> ,t :FZF<CR>

" silver search
nnoremap ,gg :Ag ""<left>

