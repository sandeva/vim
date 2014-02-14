filetype off

call pathogen#infect() 
call pathogen#helptags()

filetype plugin indent on
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set number
set showcmd
set hlsearch
set mouse=a
set textwidth=79
set colorcolumn=+1
hi DiffAdd ctermfg=white
hi DiffChange ctermfg=white
hi DiffDelete ctermfg=white
hi DiffText ctermfg=white
