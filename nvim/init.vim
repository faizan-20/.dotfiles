let mapleader = " "
let g:airline_theme='minimalist'
"------------------------------------ Plugin --------------------------
call plug#begin('~/.vim/plugged')
"Tools
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'junegunn/goyo.vim'
	Plug 'francoiscabrol/ranger.vim'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Syntax

call plug#end()

"------------------------------ General Settings-------------------
set encoding=UTF-8
filetype plugin indent on
syntax on
set wildmenu
set number relativenumber
set shiftwidth=4
set tabstop=4
set softtabstop=4
set cursorline
set smartindent
set laststatus=2
set cmdheight=2

"---------------------------- Key Remapping ---------------------------------

"---------------------------Color Settings -------------------------------









