"---------------------------------mapleader----------------------------
let mapleader = " "
"----------------------------------airline-----------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
"let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'
"let g:airline_theme='gruvbox'

"------------------------------------ Plugin --------------------------
call plug#begin('~/.vim/plugged')
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}

	Plug 'junegunn/fzf.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'junegunn/goyo.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vifm/vifm.vim'
"Syntax
	Plug 'lilydjwg/colorizer'
	Plug 'plasticboy/vim-markdown'
"Color
	Plug 'morhetz/gruvbox'
    Plug 'dylanaraps/wal.vim'
call plug#end()

"------------------------------ General Settings-----------------------
set encoding=UTF-8
filetype plugin indent on
syntax on
set mouse=a
set wildmode=full wildmenu
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab smarttab
set cursorline
set laststatus=2
set nu relativenumber
set incsearch
"set termguicolors t_Co=256
set autoindent smartindent
"set noshowmode
set clipboard=unnamedplus

"---------------------------- Key Remapping ---------------------------
map <C-p>	    :Files<CR>
map <leader>g   :Goyo<CR>
map <M-e>	    :CocCommand explorer<CR>
map <leader>r   :Vifm<CR>

map <F4>        :!python %<CR>
map <F5>        :!gcc % -o %< && ./%<<CR>

map <C-tab>	    :bnext<CR>
map <M-tab>     :bprevious<CR>
map <M-d>       :bdelete<CR>
map <leader>l   :set bg=light<CR>
map <leader>d   :set bg=dark<CR>
map <leader>g   :colorscheme gruvbox<CR>

imap jk <ESC>
imap kj <ESC>

"---------------------------Color Settings ----------------------------
"let g:gruvbox_italic=1
"if (empty($TMUX))
"  if (has("nvim"))
"    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  endif
"  if (has("termguicolors"))
"    set termguicolors
"  endif
"endif
"
"set bg=dark

colorscheme wal
"colorscheme gruvbox
"colorscheme spacegray
"colorscheme hybrid_reverse

hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 

""-------------------------- Startify settings-------------------------
"    let g:startify_lists = [
"          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
"          \ { 'type': 'files',     'header': ['   Recent Files']            },
"          \ { 'type': 'dir',       'header': ['   Current Dir '. getcwd()] },
"          \ { 'type': 'sessions',  'header': ['   Sessions']       },
"          \ { 'type': 'commands',  'header': ['   Commands']       },
"          \ ]
"
"    let g:startify_custom_header = [
"            \ '                                ',
"            \ '            __                  ',
"            \ '    __  __ /\_\    ___ ___      ',
"            \ '   /\ \/\ \\/\ \ /'' __` __`\   ',
"            \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \   ',
"            \ '    \ \___/  \ \_\ \_\ \_\ \_\  ',
"            \ '     \/__/    \/_/\/_/\/_/\/_/  ',
"            \ ]
"
"let g:startify_bookmarks = [ {'z': '~/.zshrc'}, {'v': '~/.config/nvim/init.vim'}, {'c': '~/.config'}, {'p': '~/Code'}, {'s': '~/.suckless/'} ]
"let g:startify_change_to_dir = 1
"let g:startify_fortune_use_unicode = 1

"-------------------------- coc-settings ------------------------------
source ~/.config/nvim/coc.vim
"-------------------------- The End -----------------------------------

"_____    ____   ___
"|  ___|  |___ \ / _ \  
"| |_ _____ __| | | | | ////////////faizan-20\\\\\\\\\\\\\
"|  _|_____/ __/| |_| | git - https://github.com/faizan-20/
"|_|      |_____|\___/
