"---------------------------------mapleader-------------------------
let mapleader = " "

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
set updatetime=300
set nu
set incsearch
set termguicolors
set hidden
set nowrap 
set smarttab
set autoindent
set noshowmode
set nobackup
set nowritebackup
set clipboard=unnamedplus
"---------------------------- Key Remapping ---------------------------------
map <C-f>	  :Files<CR>						
map <leader>g :Goyo<CR>
map <leader>e :CocCommand explorer<CR>
map <leader>p :!python %<CR>
map <F5>	  :!gcc % -o %< && ./%<<CR>

map <leader><tab> :bnext<CR>
map <leader><S-tab> :bprevious<CR>
map <leader>d :bdelete<CR>
"---------------------------Color Settings ---------------------------------

colorscheme gruvbox 
set background=dark cursorline termguicolors

hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 

"-------------------------- coc-settings ------------------------------------
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible()  "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
