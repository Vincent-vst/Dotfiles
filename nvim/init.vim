
"--------------------------
"PlugIn installation 
"--------------------------

call plug#begin('~/.config/nvim/autoload/plugged')
	" Captppucin color scheme
	Plug 'catppuccin/nvim', {'as': 'catppuccin'}
	" File Explorer
	Plug 'scrooloose/NERDTree'
	" Comments 
	Plug 'tpope/vim-commentary'
	" Vim in sudo 
	Plug 'lambdalisue/suda.vim'
	" Auto pairs () {} [] 
	Plug 'jiangmiao/auto-pairs'
	" Dashboard 
	Plug 'glepnir/dashboard-nvim'	
	" File finder 
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
	" Intelisense
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


"--------------------------
"Basic nvim configuration
"--------------------------

syntax on
set number
set encoding=utf-8
set scrolloff=10
" add config file for COC
source /home/vincent/.config/nvim/coc-config/coc.vim


"--------------------------
"Key maps
"--------------------------

" gd to go to function definition
nmap <silent> gd <Plug>(coc-definition)
" gD to go to function implementation
nmap <silent> gD <Plug>(coc-implementation)
" shortcut for :Prettier 
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
" shortcut for :Tree
command! -nargs=0 Tree :NERDTree
" shortcut for Telescope live grep 
nmap <silent> grep :Telescope live_grep
" delete esc+p autopaire shortcut 
let g:AutoPairsShortcutToggle = ''

"--------------------------
"Color settings
"--------------------------

set termguicolors 
hi Comment cterm=italic
set background=dark

let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha
lua << EOF
require("catppuccin").setup()
local db = require('dashboard')
local home = os.getenv('HOME')
db.custom_header = {
  [[              ▄▄▄▄▄▄▄▄▄            ]],
  [[           ▄█████████████▄          ]],
  [[   █████  █████████████████  █████  ]],
  [[   ▐████▌ ▀███▄       ▄███▀ ▐████▌  ]],
  [[    █████▄  ▀███▄   ▄███▀  ▄█████    ]],
  [[    ▐██▀███▄  ▀███▄███▀  ▄███▀██▌    ]],
  [[     ███▄▀███▄  ▀███▀  ▄███▀▄███    ]],
  [[     ▐█▄▀█▄▀███ ▄ ▀ ▄ ███▀▄█▀▄█▌    ]],
  [[      ███▄▀█▄██ ██▄██ ██▄█▀▄███      ]],
  [[       ▀███▄▀██ █████ ██▀▄███▀      ]],
  [[      █▄ ▀█████ █████ █████▀ ▄█      ]],
  [[      ███        ███        ███      ]],
  [[      ███▄    ▄█ ███ █▄    ▄███      ]],
  [[      █████ ▄███ ███ ███▄ █████      ]],
  [[      █████ ████ ███ ████ █████      ]],
  [[      █████ ████▄▄▄▄▄████ █████      ]],
  [[       ▀███ █████████████ ███▀      ]],
  [[         ▀█ ███ ▄▄▄▄▄ ███ █▀        ]],
  [[            ▀█▌▐█████▌▐█▀            ]],
  [[               ███████              ]]
	}
db.custom_center = {
      {icon = '  ',
      desc = 'Recently latest session                  ',
      shortcut = 'SPC s l',
      action ='SessionLoad'},
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f'},
      {icon = '  ',
      desc ='File Browser                            ',
      action =  'Telescope file_browser',
      shortcut = 'SPC f b'},
      {icon = '  ',
      desc = 'Find  word                              ',
      action = 'Telescope live_grep',
      shortcut = 'SPC f w'},
      {icon = '  ',
      desc = 'Open Personal dotfiles                  ',
      action = 'Telescope dotfiles path=' .. home ..'/.config',
      shortcut = 'SPC f d'},
    }
EOF
colorscheme catppuccin

