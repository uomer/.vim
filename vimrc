set number
set relativenumber
set autoindent
set shiftwidth=2
set tabstop=2
set scrolloff=5
set wildmenu
set cursorline

syntax on
imap jk <esc>

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

se t_Co=256
set background=dark
set completeopt=noinsert,menuone,noselect
let g:gruvbox_italic=1
colorscheme gruvbox
let g:indentLine_concealcursor = ''
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='hard'

" 背景透明
 hi Normal ctermbg=NONE
" hi LineNr ctermbg=NONE ctermfg=grey
" hi CursorLineNr cterm=NONE ctermbg=234 ctermfg=72
" hi Cursorline cterm=NONE ctermbg=234
