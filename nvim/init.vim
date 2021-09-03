"---------------------------------mapleader----------------------------
let mapleader = " "
"------------------------------------ Plugin --------------------------
call plug#begin('~/.vim/plugged')
    Plug 'hoob3rt/lualine.nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'neovim/nvim-lspconfig'
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'mattn/emmet-vim'
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
    Plug 'kshenoy/vim-signature'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
"Syntax
	Plug 'lilydjwg/colorizer'
    Plug 'sheerun/vim-polyglot'
    Plug 'kyazdani42/nvim-web-devicons' " for file icons
    Plug 'jiangmiao/auto-pairs'
"Color
   Plug 'gruvbox-community/gruvbox'
   Plug 'sainnhe/sonokai'
call plug#end()
"------------------------------ General Settings-----------------------
set encoding=UTF-8
filetype plugin indent on
syntax on
set mouse=a
set wildmode=full
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab smarttab
set cursorline
set laststatus=2
set hidden
set nu rnu
set incsearch
set nohlsearch
set autoindent smartindent
set nobackup nowritebackup
set splitbelow splitright
set clipboard=unnamedplus
set nocompatible
set bg=dark
"---------------------------- Key Remapping ---------------------------
nnoremap <F4>        :!python %<CR>
nnoremap <F5>        :!gcc % -o %< && ./%<<CR>
nnoremap <M-tab>     :bnext<CR>
nnoremap <C-tab>     :bprevious<CR>
nnoremap <M-w>       :bdelete<CR>
nnoremap <leader>l   :set bg=light<CR>
nnoremap <leader>d   :set bg=dark<CR>

imap jk <ESC>
imap kj <ESC>

nnoremap <Up>   :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1000)
autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 1000)
autocmd BufWritePre *.c lua vim.lsp.buf.formatting_sync(nil, 1000)
"-------------------------- Auto command ------------------------------
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup Call_fun
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
"---------------------------Color Settings ----------------------------
source ~/.config/nvim/Plugin/color-config.vim
"-------------------------- lsp ---------------------------------------
source ~/.config/nvim/Plugin/lsp.lua
source ~/.config/nvim/Plugin/nvim-compe.lua
"source ~/.config/nvim/coc.vim
"-------------------------- other plugins -----------------------------
source ~/.config/nvim/Plugin/treesitter.lua
source ~/.config/nvim/Plugin/lualine.lua
source ~/.config/nvim/Plugin/nvim-tree.vim
"-------------------------- The End -----------------------------------

"_____    ____   ___
"|  ___|  |___ \ / _ \
"| |_ _____ __| | | | | ////////////faizan-20\\\\\\\\\\\\\
"|  _|_____/ __/| |_| | git - https://github.com/faizan-20/
"|_|      |_____|\___/

