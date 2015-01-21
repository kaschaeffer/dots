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


" keyboard shortcuts
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <leader>d :NERDTreeToggle<CR>
inoremap jj <ESC>

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

" TODO add autosaving functionality
" TODO add fast python linter
" TODO add git-gitter back?

colorscheme gotham
