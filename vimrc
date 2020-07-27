set number
set relativenumber
set autoindent
set shiftwidth=2
set tabstop=2
set scrolloff=5
set wildmenu
set cursorline
set fileencoding=utf-8
set fileencodings=utf-8,gb2312,gbk,cp936
set ignorecase
set incsearch
set autoread
set	expandtab 
set mouse=a

syntax on
let mapleader=" "
imap jk <esc>
nmap <leader>h <c-w>h
nmap <leader>j <c-w>j
nmap <leader>k <c-w>k
nmap <leader>l <c-w>l
nmap <leader>o <c-w>o
nmap <leader>n <c-w>n
nmap <leader>= <c-w>=
nmap <leader>\| <c-w>\|
nmap <leader>w- <c-w>- 20
nmap <leader>w= <c-w>+ 20
nmap <leader>v- <c-w>< 20
nmap <leader>v= <c-w>> 20

nmap <leader>r :e!<cr>
nmap <leader>m :set mouse=a<cr>
nmap <leader>mn :set mouse=<cr>
nmap <leader>bn :bn<cr>
nmap <leader>bp :bp<cr>
nmap <leader>bd :bd<cr>
nmap <leader>vs :vs<cr>
nmap <leader>sp :sp<cr>
nmap <leader>wc :hid<cr>

nmap <leader>cn :cn<cr>
nmap <leader>cp :cp<cr>
nmap <leader>cl :cl<cr>
nmap <leader>cw :cw<cr>

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'

call plug#end()
let g:coc_disable_startup_warning = 1

nmap tt :NERDTreeToggle<cr>

se t_Co=256
set background=dark
set completeopt=noinsert,menuone,noselect
let g:gruvbox_italic=1
colorscheme gruvbox
let g:indentLine_concealcursor = ''
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='hard'
let g:jsx_ext_required=0

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" 背景透明
 hi Normal ctermbg=NONE

"coc keymap

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" ~/.eslintrc.json
" {
" 	"env": {
" 		"browser": true,
" 		"node": true,
" 		"commonjs": true,
" 		"es6": true,
" 		"mocha": true
" 	},
" 	"extends": "eslint:recommended",
" 	"parserOptions": {
" 		"sourceType": "module",
" 		"ecmaVersion": 2020
" 	}
" }
"

" coc Plugin:
"
" coc-git coc-smartf coc-pairs coc-tsserver coc-emmet coc-html coc-stylelint
" coc-java coc-python coc-json coc-go coc-prettier

