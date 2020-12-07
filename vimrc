set autoindent
set number
set wildmenu
set incsearch
set ignorecase
set expandtab
set nobomb
set nocp
filetype plugin on
syntax on
set shiftwidth=2
set tabstop=2
set softtabstop=2
set scrolloff=5
set laststatus=2
set fileencoding=utf8
set fileencodings=utf-8,gb2312,gbk,cp936

imap jk <ESC>
nmap vs :vs<CR>
nmap wo <C-w>o
nmap wh <C-w>h
nmap wj <C-w>j
nmap wk <C-w>k
nmap wl <C-w>l

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'chemzqm/wxapp.vim'
call plug#end()

let g:coc_disable_startup_warning = 1

nmap tt :NERDTreeToggle<cr>
let NERDTreeWinSize=25

colorscheme gruvbox
set background=dark

" 背景透明
" hi Normal ctermbg=NONE
