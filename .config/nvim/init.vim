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
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'lepture/vim-jinja'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
 
"------------------------------------
" sass
"------------------------------------
""{{{
NeoBundle 'AtsushiM/search-parent.vim'
NeoBundle 'AtsushiM/sass-compile.vim'

let g:sass_compile_auto = 1
let g:sass_compile_cdloop = 5
let g:sass_compile_cssdir = ['../static/**/css', 'stylesheet']
let g:sass_compile_file = ['scss', 'sass']
let g:sass_compile_beforecmd = ''
let g:sass_compile_aftercmd = ''
"}}}


let g:unite_source_history_yank_enable=1
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\ 'windows' : 'tools\\update-dll-mingw',
\ 'cygwin' : 'make -f make_cygwin.mak',
\ 'mac' : 'make -f make_mac.mak',
\ 'linux' : 'make',
\ 'unix' : 'gmake',
\ },
\ }


" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
 filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"------------- My Stuff---------------------------
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
" set background=dark
autocmd BufWritePost *.coffee silent make!

nmap <Space>u [unite]
nnoremap [unite]c :<C-u>UniteWithCurrentDir -buffer-name=files buffer file_mru bookmark file<CR>
nnoremap [unite]b :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]p :<C-u>Unite file_rec/git<CR>
nnoremap <silent> [unite]a :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer file_mru<CR>
nnoremap <silent> [unite]r :<C-u>Unite<Space>register<CR>
nnoremap <silent> [unite]t :<C-u>Unite<Space>tab<CR>
nnoremap <silent> [unite]h :<C-u>Unite<Space>history/yank<CR>
nnoremap <silent> [unite]o :<C-u>Unite<Space>outline<CR>


colorscheme peachpuff
hi DiffAdd ctermfg=white
hi DiffChange ctermfg=white
hi DiffDelete ctermfg=white
hi DiffText ctermfg=white

set backupdir=/tmp/
