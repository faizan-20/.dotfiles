"---------------------------------mapleader----------------------------
let mapleader = " "
"------------------------------------ Plugin --------------------------
call plug#begin('~/.vim/plugged')
    Plug 'hoob3rt/lualine.nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'neovim/nvim-lspconfig'
    Plug 'mattn/emmet-vim'
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
    Plug 'kshenoy/vim-signature'
    Plug 'preservim/nerdtree'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

"Syntax
	Plug 'lilydjwg/colorizer'
    Plug 'sheerun/vim-polyglot'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Color
   Plug 'morhetz/gruvbox'
   Plug 'sainnhe/sonokai'
   Plug 'sainnhe/gruvbox-material'
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
set nu rnu
set incsearch
set autoindent smartindent
set nobackup nowritebackup 
set splitbelow splitright
"set spell spelllang=en_us
set clipboard=unnamedplus
set nocompatible
set bg=dark
"let g:user_emmet_leader_key='<A-c>'
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

"inoremap <silent><expr> <C-Space> compe#complete()
"inoremap <silent><expr> <CR>      compe#confirm('<CR>')
"inoremap <silent><expr> <C-e>     compe#close('<C-e>')
"inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
"inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.c lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
"---------------------------Color Settings ----------------------------
source ~/.config/nvim/Plugin/color-config.vim

"-------------------------- lsp ------------------------------
source ~/.config/nvim/Plugin/lsp.rc.lua
source ~/.config/nvim/Plugin/nvim-compe.lua

"-------------------------- other plugins --------------------
source ~/.config/nvim/Plugin/treesitter.lua
source ~/.config/nvim/Plugin/lualine.rc.lua
source ~/.config/nvim/Plugin/web-devicons.vim
source ~/.config/nvim/Plugin/nerdtree-highlight.vim
source ~/.config/nvim/Plugin/nerdtree.vim

"-------------------------- The End -----------------------------------

"_____    ____   ___
"|  ___|  |___ \ / _ \  
"| |_ _____ __| | | | | ////////////faizan-20\\\\\\\\\\\\\
"|  _|_____/ __/| |_| | git - https://github.com/faizan-20/
"|_|      |_____|\___/
 
