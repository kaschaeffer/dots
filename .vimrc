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
" note: this interferes with airline being drawn correctly on startup
set lazyredraw
set number
set showmatch
set nocursorline " don't highlight current line
set matchtime=1 "TODO play with this number

" this should be set to 4 for python files
set shiftwidth=2 " normal mode indentation commands use 4 spaces
set softtabstop=2 " insert mode tab and backspace use 4 spaces

" make backspace work correctly
set backspace=2

" fix slow O
set noesckeys

let g:NERDTreeWinPos = "left"

" automatically rebalance windows on vim resize
augroup balancewindows
  autocmd!
  autocmd VimResized * :wincmd =
augroup END

" autosave
augroup autosave
  autocmd!
  autocmd CursorHoldI,CursorHold,BufLeave <buffer> silent! :update
augroup END

" fix copy/paste
set clipboard=unnamed

" use pretty airline font patch
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

" TODO needed for airline (explain why!)
set laststatus=2

" limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240


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

" colorscheme base16-atelierlakeside
" colorscheme blackboard
" colorscheme base16-londontube
set background=dark
" set background=light
" colorscheme onedark
" colorscheme birds-of-paradise
" colorscheme base16-paraiso
" colorscheme badwolf
" colorscheme gotham
" colorscheme solarized
" colorscheme seoul256
colorscheme base16-codeschool
" colorscheme base16-solarized
" colorscheme base16-ateliersulphurpool
" colorscheme base16-atelierforest
" colorscheme base16-ateliersavanna
" colorscheme base16-railscasts
" colorscheme base16-bespin
" colorschem japanesque

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" golang
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gdv <Plug>(go-doc-vertical)
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 0

" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_build_constraints = 1

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "active_filetypes": ["python", "c", "go"],
    \ "passive_filetypes": ["java", "scala"] }
let g:syntastic_python_checkers = ["flake8", "mypy"]
let g:syntastic_cpp_compiler_options = ' -std=c++14 -Wall'

let g:syntastic_go_checkers = ["go", "golint", "govet", "errcheck"]

function Reading()
  Limelight
  Goyo
endfunction

command! Reading call Reading()
