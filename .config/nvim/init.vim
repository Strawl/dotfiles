" This is my vimrc file
"
" Sourcing the to different files
source $HOME/.config/nvim/vim-plug/plugins.vim

"------------------------------------------------------------------------------------------------------
set scrolloff=7
" For tabs and intendations
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent

" File format
set fileformat=unix

" set it to utf-8
set encoding=utf-8

set cmdheight=2

" If there is a vimrc file in the folder im working on, it will take that file
set exrc
" makes it so i have buffer and files load faster
set hidden

" sets the relativnumber
set relativenumber
" shows the line im at
set nu

" makes it so that i don't hear the beeping anymore
" set noerrorbells
set belloff=all

" makes it so that lines don't wrap
set nowrap

" keeps logs
set undodir=~/.vim/undodir
set undofile

" when searching it automatically highlights
set incsearch

" makes it so i have a sidecolumn on the side
set signcolumn=yes

set clipboard+=unnamedplus

"-----------------------------------------------------------------------------------------------

let mapleader = " "

" Nerdtree
nnoremap <leader>f :NERDTreeToggle<CR>

" Shortcut quick navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <c-w>l

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Down> <Esc>:m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>

nnoremap <C-s> :w<CR> 

" Copy without the buffer getting replaced
xnoremap ,p "0p
nnoremap ,p "0p
