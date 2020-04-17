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
set autoread<
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

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mxw/vim-jsx'

" ES2015 code snippets
Plug 'epilande/vim-es2015-snippets'

" React code snippets (Optional)
Plug 'epilande/vim-react-snippets'

" Ultisnips
Plug 'SirVer/ultisnips'

" Trigger configuration (Optional)
" let g:UltiSnipsExpandTrigger="<C-l>"

Plug 'chemzqm/wxapp.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install', 'for' :['markdown', 'vim-plug'] }
Plug 'plasticboy/vim-markdown'
call plug#end()

nmap tt :NERDTreeToggle<cr>
map <F8> <Plug>MarkdownPreviewToggle

se t_Co=256
set background=dark
set completeopt=noinsert,menuone,noselect
let g:gruvbox_italic=1
colorscheme gruvbox
let g:indentLine_concealcursor = ''
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='hard'
let g:jsx_ext_required=0
let g:UltiSnipsExpandTrigger="<C-l>"
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" 背景透明
 hi Normal ctermbg=NONE
" hi LineNr ctermbg=NONE ctermfg=grey
" hi CursorLineNr cterm=NONE ctermbg=234 ctermfg=72
" hi Cursorline cterm=NONE ctermbg=234
"
"coc keymap

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <leader>ei <Plug>(coc-diagnostic-info)
nnoremap <leader>en <Plug>(coc-diagnostic-next)
nnoremap <leader>ep <Plug>(coc-diagnostic-prev)
nnoremap <leader>een <Plug>(coc-diagnostic-next-error)
nnoremap <leader>eep <Plug>(coc-diagnostic-prev-error)
nnoremap <leader>cdef <Plug>(coc-definition)
nnoremap <leader>cdec <Plug>(coc-declaration)
nnoremap <leader>cimp <Plug>(coc-implementation)

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

