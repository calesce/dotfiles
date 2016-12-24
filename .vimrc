syntax on

set number
set nocompatible
set backspace=indent,eol,start
set autoindent " always set autoindenting on
set history=100
set incsearch
set showcmd " display incomplete commands
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autochdir
set ttyfast

set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

filetype plugin indent on
set mouse=a
set ttymouse=xterm2

set background=dark
set encoding=utf-8

let g:grb256_termtrans=1
:set t_Co=256
:set background=dark
:color grb256

call plug#begin('~/.vim/plugged')

Plug 'elixir-lang/vim-elixir'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

let mapleader = ","

cnoremap %% <C-R>=expand('%:h').'/'<cr>
nnoremap <leader><leader> <c-^> " jump between last two files

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
