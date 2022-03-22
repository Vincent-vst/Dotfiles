
"--------------------------
"PlugIn installation 
"--------------------------

call plug#begin('~/.config/nvim/autoload/plugged')
	" Captppucin color scheme
	Plug 'catppuccin/nvim', {'as': 'catppuccin'}
	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'
	" File Explorer
	Plug 'scrooloose/NERDTree'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
	" Nightfly Colors scheme    
	Plug 'bluz71/vim-nightfly-guicolors' 
	" Autocompletion
	" Syntax error 
	" Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Comments 
	Plug 'tpope/vim-commentary'
call plug#end()


"--------------------------
"Basic nvim configuration
"--------------------------


syntax on
set number
set encoding=utf-8
set scrolloff=10

"--------------------------
"Color settings
"--------------------------

set termguicolors 
" colorscheme nightfly
hi Comment cterm=italic
" set background=dark


