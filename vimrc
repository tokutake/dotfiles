" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-rails'
Plug 'rking/ag.vim'
Plug 'vim-syntastic/syntastic'
Plug 'ngmy/vim-rubocop'
Plug 'tpope/vim-fugitive'

" Syntastics
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_ruby_rubocop_exec = '~/.rbenv/shims/rubocop'

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

" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" fuzzy file finder setting
nnoremap <silent> ,t :FZF<CR>

" silver search
nnoremap ,gg :Ag ""<left>

set clipboard=unnamed
