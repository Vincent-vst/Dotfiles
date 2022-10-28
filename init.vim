
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
	" Syntax error & autocompletion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Comments 
	Plug 'tpope/vim-commentary'
	" Vim in sudo 
	" Plug 'lambdalisue/suda'
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
hi Comment cterm=italic
set background=dark

let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha
lua << EOF
require("catppuccin").setup()
EOF
colorscheme catppuccin
