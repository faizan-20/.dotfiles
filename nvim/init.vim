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
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'drewtempelmeyer/palenight.vim'
	Plug 'morhetz/gruvbox'
	Plug 'rakr/vim-one'
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
set nu
set incsearch
"---------------------------- Key Remapping ---------------------------------
map <C-g> :Goyo<CR>
"---------------------------Color Settings ---------------------------------
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

"colorscheme one	
colorscheme gruvbox
"colorscheme palenight
"colorscheme dracula
set background=dark

hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 


