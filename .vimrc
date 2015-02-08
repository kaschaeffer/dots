" don't care about vi compatibility
set nocompatible

" syntax highlighting
syntax enable

" set up Vundle
filetype on " TODO why is this necessary?
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" NOT SURE WHY...
call vundle#end()
filetype plugin indent on

let mapleader = ","

" keyboard shortcuts
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

inoremap jj <ESC>

nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>u muviwU`u

" python
nnoremap <leader>t :Dispatch nosetests -v<CR>

" redraw lazily to speed up macros
set lazyredraw
set number
set showmatch
set nocursorline " don't highlight current line
set matchtime=1 "TODO play with this number

" this should be set to 4 for python files
set shiftwidth=2 " normal mode indentation commands use 4 spaces
set softtabstop=2 " insert mode tab and backspace use 4 spaces

let g:NERDTreeWinPos = "left"

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" autosave
autocmd CursorHoldI,CursorHold,BufLeave <buffer> silent! :update

" fix copy/paste
set clipboard=unnamed

" TODO add autosaving functionality
" TODO add fast python linter
" TODO add git-gitter back?
" TODO add map for reloading vim
" TODO add asynchronous arc build
" TODO add map for backgrounding vim while also saving first
" TODO fix buggy airline bar
" TODO add shortcut for python main
"   boilerplate
" TODO add abbreviations for standard
"   open-source copywrite
" TODO add shortcuts for upcasing
" TODO add mapping for converting camel <-->
" snake case

colorscheme base16-atelierlakeside
