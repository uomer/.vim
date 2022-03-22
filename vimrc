set number
set relativenumber
set autoindent
set expandtab
set incsearch
set cursorline
" set cursorcolumn
set wildmenu
syntax on
set softtabstop=2
set tabstop=2
set shiftwidth=2
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gbk,ucs-2le,ucs-2be,utf-16
set scrolloff=5
set laststatus=2
set updatetime=100
set mouse=
set guifont=Source\ Code\ Pro\ 14

let mapleader=" "
inoremap jk <ESC>

nnoremap <leader>o <C-w>o
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>r :e!<cr>
nnoremap <leader>t :NERDTreeToggle<CR>

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


call plug#begin('~/.vim/plugged')
  Plug 'mhinz/vim-startify'
  Plug 'morhetz/gruvbox'
  Plug 'godlygeek/tabular'
"  Plug 'sainnhe/edge'
"  Plug 'sainnhe/sonokai'
"  Plug 'altercation/vim-colors-solarized'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'preservim/nerdtree'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"  Plug 'chemzqm/wxapp.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

set t_Co=256
set background=dark

colorscheme gruvbox
hi Comment cterm=italic

" 背景透明
hi Normal ctermbg=NONE
hi LineNr ctermbg=NONE
hi CursorLineNr ctermbg=NONE
" hi CursorLine cterm=underline ctermbg=NONE
hi SignColumn ctermbg=NONE
highlight CursorLine cterm=NONE ctermbg=Black ctermfg=NONE

" coc.nvim

 let g:coc_global_extensions = [
  \ 'coc-json', 
  \ 'coc-tsserver',
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-phpls',
  \ 'coc-go',
  \ 'coc-python',
  \ 'coc-vimlsp']

"coc keymap
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <silent> [g <Plug>(coc-diagnostic-prev)
nnoremap <silent> ]g <Plug>(coc-diagnostic-next)

nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)

" nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

" autocmd CursorHold * silent call CocActionAsync('highlight')

