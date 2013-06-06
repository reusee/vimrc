set nocp
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'

filetype plugin indent on

let mapleader=","
set mouse=a
set autochdir
set dir=~/.vimdir
set noswapfile
set history=50000 undolevels=50000

" Appearance
set t_Co=256
colo molokai
syntax on
set nowrap
set laststatus=2
set showmatch
set cursorline
set guioptions=acvp
set guicursor+=a:blinkon0
set number
set guifont=Monaco\ 14 linespace=0 ambiwidth=double
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set wildmenu
"set scrolloff=25
"au InsertEnter * set scrolloff=2
"au InsertLeave * set scrolloff=25

" File
set hidden
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set wildignore+=*.pyc,*/.git/*,*/.hg/*
"au BufWinLeave * silent! mkview
"au BufWinEnter * silent! loadview

" Editing
set backspace=indent,eol,start
set autoindent
set copyindent
set ignorecase
set smartcase
set infercase
set hlsearch incsearch
set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
set sm
set virtualedit=onemore

" Key Mappings

" navigation
nmap s F
nmap e _f
" tab
nmap H :tabprev<CR>
nmap L :tabnext<CR>
nmap <C-j> :tabnext<CR>
nmap <C-k> :tabprev<CR>
" scroll
nmap M <C-f>
nmap U <C-b>
" paste
nmap Y i<C-r>+<Esc>
imap <F1> <C-r>+
" search
nmap <silent> <leader>m :nohlsearch<CR>
" save
nmap <leader>w :w<CR>
" open
nmap <leader>e :tabe<CR><C-p>
nmap <leader>ne :tabe<CR>:CtrlP ~<CR>
nmap <leader>r :CtrlP<CR>
nmap <leader>nr :CtrlP ~<CR>
nmap <leader>f :call OpenFile()<CR>
" interpret
nmap <leader>p :w<CR>:!python %<CR>
" quit
nmap <leader>q :q<CR>
nmap <leader>Q :wq<CR>
" command
nmap <leader>s :!<Space>
" mode switch
imap kd <Esc>

nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

function OpenFile()
  if expand("%:t") == ""
    :e
  else
    :tabe
  endif
endfunction
