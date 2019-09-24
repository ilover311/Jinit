execute pathogen#infect()

" color
color seoul256
let g:seoul256_background=233

syntax on
set nu
set ts=4
set sw=4
set sts=4
set showmatch
set shiftwidth=4
set si
set cin
set cinoptions+=j1
set backspace=2
set backspace=indent,eol,start
set ignorecase
set smartcase
set expandtab
set hlsearch
set encoding=utf-8
highlight MatchParen cterm=bold ctermbg=lightgreen ctermfg=magenta

" Markdown Plugin
let g:vim_markdown_folding_disabled=1

" wildignore for ctrlp
set wildignore+=*/node_modules/*
set wildignore+=*/build/*
set wildignore+=*/dst/*
set wildignore+=*/tmp/*

" set keyword
set iskeyword+=\-
set iskeyword+=\_

" set vim yank unlimit
set viminfo='100,h

filetype plugin indent on

" Remember last cursor position
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

map <F5> :NERDTreeToggle <CR>

map <Tab> :tabn <CR>
map <S-Tab> :tabp <CR>
map <C-n> :tabe <CR>
map <F3> :!pbcopy < % <CR>
map <F10> :!g++ -std=c++17 % -Wall -g -o %.out <CR>
map <F9> :!./%.out < in.txt <CR>
