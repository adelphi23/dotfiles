" set leader key
let g:mapleader = "\<Space>"

syntax enable                       " Enables syntax highlighing
set hidden                          " Required to keep multiple buffers open multiple buffers
set noerrorbells                    " Cancel the sound alarm on errors
set encoding=utf-8                  " The encoding displayed
set fileencoding=utf-8              " The encoding written to file
set ruler              		        " Show the cursor position all the time
set cmdheight=2                     " More space for displaying messages
set iskeyword+=-                  	" treat dash separated words as a word text object"
set mouse=a                         " Enable your mouse
set splitbelow                      " Horizontal splits will automatically be below
set splitright                      " Vertical splits will automatically be to the right
"set t_Color=256                        " Support 256 colors
set conceallevel=0                  " So that I can see `` in markdown files
set tabstop=4                       " Insert 4 spaces for a tab
set shiftwidth=4                    " Change the number of space characters inserted for indentation
set smarttab                        " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                       " Converts tabs to spaces
set smartindent                     " Makes indenting smart
set incsearch
set autoindent                      " Good auto indent
set laststatus=0                    " Always display the status line
set number                          " Line numbers
set cursorline                      " Enable highlighting of the current line
set background=dark                 " tell vim what the background color looks like
set showtabline=2                   " Always show tabs
set nobackup                        " This is recommended by coc
set undodir=~/.config/nvim/undodir
set undofile
set nowritebackup                   " This is recommended by coc
set updatetime=300                  " Faster completion
set timeoutlen=1000                  " By default timeoutlen is 1000 ms
set formatoptions=cro              " Stop newline continution of comments
set clipboard=unnamedplus           " Copy paste between vim and everything else
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
" set pumheight=10                  " Makes popup menu smaller
" set noshowmode                    " We don't need to see things like -- INSERT -- anymore
"set autochdir                      " Your working directory will always be the same as your working directory
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox' 
" Plug 'jremmen/vim-ripgrep' 
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim' 
Plug 'vim-utils/vim-man'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'mbbill/undotree' 
Plug 'Yggdroot/indentLine'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'dense-analysis/ale'

call plug#end()

colorscheme gruvbox

"==> YAML configuration
" make 2-space indentation standard for yaml files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" makes the indentation character a thinner line (using identLine Plugin)
"   let g:indentLine_char = '|'

if executable('rg')
    let g:rg_derive_root='true'
endif
