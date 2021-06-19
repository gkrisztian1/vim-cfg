call plug#begin()
"Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'godlygeek/tabular'
Plug 'jmcantrell/vim-virtualenv'
call plug#end()

" Reload the current file
map <F10> <Esc>:w<CR>:so %<CR>
imap <F10> <Esc>:w<CR>:so %<CR>


let mapleader='ö'
inoremap <nowait> jj <Esc>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
nnoremap ü {
nnoremap ó }
nnoremap <C-ü> (
nnoremap <C-ó> )
nnoremap , :

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
set clipboard=unnamedplus
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
"set lines=999 columns=999 " full windows
set smartcase


set shortmess=a
set cmdheight=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PYTHON RELATED


" run script in normal/insert mode with F9
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" Ipython with Ctrl-F9
autocmd FileType python map <buffer> <C-F9> :w<CR>:exec '!ipython -i' shellescape(@%, 1)<CR>i
autocmd FileType python imap <buffer> <C-F9> <esc>:w<CR>:exec '!ipython -i' shellescape(@%, 1)<CR>i


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)


" CtrlP
"
let g:ctrlp_cmd='CtrlP :pwd'
let g:ctrlp_extensions=['line', 'tag']
nnoremap <S-p> :CtrlPLine<CR>

" KEYS
tnoremap <Esc> <C-\><C-n> " Switch back to normal mode from terminal
" switching between buffers with TAB ans Shift+TAB
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>


" Powerline
set  rtp+=~/.local/lib/python3.8/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

" Cursor
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
\ if v:insertmode == 'i' | 
\   silent execute '!echo -ne "\e[6 q"' | redraw! |
\ elseif v:insertmode == 'r' |
\   silent execute '!echo -ne "\e[4 q"' | redraw! |
\ endif
au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
