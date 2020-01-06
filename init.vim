set nocp

"plugins {{{1
call plug#begin('~\vimfiles\plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'

Plug 'vim-scripts/c.vim'
Plug 'pangloss/vim-javascript'
Plug 'tbastos/vim-lua'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'

Plug 'junegunn/rainbow_parentheses.vim'

call plug#end()

"source my crap
for f in split(globpath(&runtimepath, '_*.vim'), "\n")
    exe 'source '. f
endfor

syntax on
filetype plugin indent on

let mapleader=","

"preferences {{{1
"behavior {{{2
set fileformats=unix,dos,mac
set foldenable
set foldmethod=marker
set autoread
set autowrite
set display+=lastline,uhex
set backspace=indent,eol,start
set history=1000
set incsearch
set hidden
set nojoinspaces
set report=0
set noerrorbells
set autoindent
set wrapscan
set ttyfast
set smartcase
set smarttab
set lazyredraw
set complete=.,b,u,]
set completeopt=menu,preview
set tabpagemax=50
set sessionoptions-=options
set dictionary=/usr/share/dict/words

"tab-completion in command-line mode
set path+=**
set wildmode=list:longest,full
set wildmenu
set wildignore+=*.o,*.obj,*.bak,*.exe,*/node_modules/*,*/vendor/*,*/tmp/cache/*,tags

"appearance {{{2
set ruler
set cmdheight=2
set showcmd
set laststatus=2
set list
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set formatoptions+=j
set number
set numberwidth=5
set cursorline
set hlsearch
set nowrap
set matchtime=5
set scrolloff=1
set sidescrolloff=15
set showmatch

"indentation {{{2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"disable swapfile and backup {{{2
set nobackup
set noswapfile
set nowb

"ctags {{{2
set tags=tags

"colorscheme {{{1
set background=dark

set t_Co=256
set background=dark
colorscheme jellybeans

" rainbow_parentheses{{{2
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" lightline
let g:lightline = {
  \ 'colorscheme': 'jellybeans',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'readonly', 'filename', 'modified', 'charvaluehex' ] ]
  \ },
  \ 'component': {
  \   'charvaluehex': '0x%B'
  \ },
  \ }
