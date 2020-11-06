"---------------------------------mapleader-------------------------
let g:mapleader = "\<Space>"

"----------------------------------airline-----------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_theme='onedark'
"let g:airline_theme='minimalist'
let g:airline_theme='gruvbox'

"------------------------------------ Plugin --------------------------
call plug#begin('~/.vim/plugged')
"Tools
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'junegunn/goyo.vim'
	Plug 'francoiscabrol/ranger.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mhinz/vim-startify'
"Syntax
	Plug 'lilydjwg/colorizer'
	Plug 'plasticboy/vim-markdown'
"Color	
	Plug 'morhetz/gruvbox'
call plug#end()

"------------------------------ General Settings-------------------
set encoding=UTF-8
filetype plugin indent on
syntax on
set mouse=a
"set wildmode
set wildmenu
set number relativenumber 
set shiftwidth=4
set tabstop=4
set softtabstop=4
set cursorline
set smartindent
set laststatus=2
set cmdheight=2
set nu
set incsearch
set termguicolors
"---------------------------- Key Remapping ---------------------------------
map <C-f>	  :Files<CR>
map <leader>g :Goyo<CR>
map <leader>n :NERDTree<CR>
map <leader>p :!python %<CR>

map <leader>l :bnext<CR>
map <leader>h :bprevious<CR>
map <leader>d :bdelete<CR>
"---------------------------Color Settings ---------------------------------

colorscheme gruvbox
set background=dark

hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 


"||-_-_-_-_-			-_-_-_-_-	=======
"||							  //	|     |
"||_-_-_-_-	  ========		//		|	  |
"||						  //		|	  |
"||						//_-_-_-_	=======
