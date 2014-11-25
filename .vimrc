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
autocmd BufWritePost *.coffee silent make!

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'klen/python-mode.git'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
