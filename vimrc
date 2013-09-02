set nocp
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'Valloric/YouCompleteMe'
"Bundle 'bling/vim-airline'
Bundle 'Blackrush/vim-gocode'
Bundle 'SirVer/ultisnips'

filetype plugin indent on

set mouse=a
set autochdir
set dir=~/.vimdir
set noswapfile
set history=50000 undolevels=50000

set shell=bash

" YouCompleteMe
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_add_preview_to_completeopt=0

"let g:airline_powerline_fonts=1
let g:airline_left_sep=""
let g:airline_left_alt_sep=""
let g:airline_right_sep=""
let g:airline_right_alt_sep=""

" Appearance
"set list
"set listchars=tab:▸\ ,eol:¬
set showcmd
set showmode
set completeopt-=preview
set t_Co=256
colo molokai
syntax on
set nowrap
"set laststatus=2
set showmatch
set cursorline
set guioptions=acvp
set guicursor+=a:blinkon0
set number
set guifont=Monaco\ 14 linespace=0 ambiwidth=double
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set wildmenu
set wildmode=list:longest,full
set ttyfast
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>
"set scrolloff=5
"au InsertEnter * set scrolloff=2
"au InsertLeave * set scrolloff=25
set relativenumber
"set guitablabel=%M%t
set showtabline=2
hi TabLineFill ctermfg=Black ctermbg=Black
hi TabLine cterm=none ctermfg=White ctermbg=Black
hi TabLineSel cterm=underline ctermfg=White ctermbg=Black

" File
"set undofile
set hidden
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set wildignore+=*.pyc,*/.git/*,*/.hg/*
"au BufWinLeave * silent! mkview
"au BufWinEnter * silent! loadview

" Editing
set gdefault
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

" Keys
nnoremap / /\v
vnoremap / /\v

" insert
imap kd <Esc>

" normal
nnoremap j gj
nnoremap k gk
nmap H :tabprev<CR>
nmap L :tabnext<CR>
nmap M <C-f>
nmap U <C-b>
nmap s F
nmap <SPACE> :

" normal + leader
let mapleader=","

nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>e :!
nmap <leader>r :tabe ~/
nmap <leader>t :tabe<SPACE>

nmap <leader>a :!ack<SPACE>
nmap <leader>s :!P="vim" fish<CR>
nmap <leader>d <C-w>
autocmd FileType go nmap <leader>f :!go run %<CR>
autocmd FileType go nmap <leader>g :!go test<CR>

nmap <leader>z :nohlsearch<CR>
nmap <leader>x :x<CR>
nmap <leader>c :!<CR>
nmap <leader>v <C-v>
"nmap <leader>b

"nmap <leader>1
"nmap <leader>2
"nmap <leader>3
"nmap <leader>4
"nmap <leader>5

autocmd FileType go nmap <leader>i :Import<SPACE>
autocmd FileType go nmap <leader>I :ImportAs<SPACE>

" Abbreviations

" golang
autocmd FileType go iab nilee if err != nil { log.Fatal(err) }

autocmd FileType go autocmd BufWritePre <buffer> Fmt
