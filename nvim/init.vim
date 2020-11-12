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
let g:airline_powerline_fonts = 1
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
"Syntax
	Plug 'lilydjwg/colorizer'
	Plug 'plasticboy/vim-markdown'
"Color	
	Plug 'morhetz/gruvbox'
	Plug 'joshdick/onedark.vim'
	Plug 'arcticicestudio/nord-vim'
call plug#end()

"------------------------------ General Settings-------------------
set encoding=UTF-8
filetype plugin indent on
syntax on
set mouse=a
set wildmode=full
set wildmenu
set shiftwidth=4
set tabstop=4
set softtabstop=4
set cursorline
set smartindent
set laststatus=2
set nu relativenumber
set incsearch
set termguicolors
set nowrap 
set smarttab
set autoindent
set noshowmode
set clipboard=unnamedplus
"---------------------------- Key Remapping ---------------------------------
map <M-f>	  :Files<CR>						
map <leader>g :Goyo<CR>
map <M-e>	  :CocCommand explorer<CR>
map <leader>p :!python %<CR>
map <F5>	  :!gcc % -o %< && ./%<<CR>

map <leader><tab> :bnext<CR>
map <leader><S-tab> :bprevious<CR>
map <leader>d :bdelete<CR>
"---------------------------Color Settings ---------------------------------

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1

colorscheme gruvbox 
"colorscheme onedark
"colorscheme nord
set background=dark 

hi LineNr ctermbg=NONE guibg=NONE
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 

"-------------------------- coc-settings ------------------------------------
source ~/.config/nvim/coc.vim

" _____    ____   ___
"|  ___|  |___ \ / _ \  
"| |_ _____ __| | | | | ////////////faizan-20\\\\\\\\\\\\\
"|  _|_____/ __/| |_| | git - https://github.com/faizan-20/
"|_|      |_____|\___/
