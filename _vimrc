call plug#begin()
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

if has('gui_running')
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
  "set guifont=Consolas:h10:cANSI
  "set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
  set guifont=Fira_Mono_for_Powerline:h10:cANSI
endif

" Reload the current file
map <F10> <Esc>:w<CR>:so %<CR>
imap <F10> <Esc>:w<CR>:so %<CR>


let mapleader='é'
imap jj <Esc>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap éé <Esc>:
nnoremap éé :

noremap 0 ^h " Jump to the first non-whitespace character
noremap <C-0> $ " Jump to the last none-whitespace character
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
colorscheme onehalfdark
filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =2         " Tab key indents by 2 spaces.
set shiftwidth  =2         " >> indents by 2 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.
set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

set nobackup
set noswapfile
set number
set ruler
syntax on
set hidden
set wildmenu "a better menu in command mode
set clipboard=unnamed
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set lines=999 columns=999 " full windows
set smartcase

set shortmess=a
set cmdheight=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PYTHON RELATED

set pythonthreedll=python38.dll

" run script in normal/insert mode with F9
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python' shellescape(@%, 1)<CR>i
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>i




" CtrlP
"
let g:ctrlp_cmd='CtrlP :pwd'
let g:ctrlp_extensions=['line', 'tag']
nnoremap <C-s> :CtrlPLine<CR>

" KEYS
tnoremap <Esc> <C-\><C-n> " Switch back to normal mode from terminal
" switching between buffers with TAB ans Shift+TAB
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>


" AIRLINE 
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
if !exists('g:airline_symbols')
        let g:airline_symbols = {}
endif
"let g:airline_left_sep = '▶️' 
"let g:airline_right_sep = ''
" COC-NVIM
"
" Confirm the completion with <CR>
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" To make <cr> select the first completion item and confirm
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

