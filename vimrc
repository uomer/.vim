set number
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
set fileencodings=utf-8,gbk,gb2312,gbk
set scrolloff=5
set laststatus=2
set updatetime=100

let mapleader=" "
imap jk <ESC>
nmap <leader>o <C-w>o
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l
nmap <leader>bd :bd<CR>
nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>
nmap <leader>r :e!<cr>
nmap <leader>t :NERDTreeToggle<CR>

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/edge'
Plug 'sainnhe/sonokai'
Plug 'altercation/vim-colors-solarized'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'chemzqm/wxapp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set t_Co=256
set background=dark

" colorscheme sonokai
colorscheme gruvbox
hi Comment cterm=italic

" 背景透明
hi Normal ctermbg=NONE
hi LineNr ctermbg=NONE
hi SignColumn ctermbg=NONE
" highlight CursorLine cterm=NONE ctermbg=Black ctermfg=NONE

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

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

autocmd CursorHold * silent call CocActionAsync('highlight')

