set nocursorline " don't highlight current line

" keyboard shortcuts
inoremap jj <ESC>

colorscheme badwolf

" gui settings
if (&t_Co == 256 || has('gui_running'))
  if ($TERM_PROGRAM == 'iTerm.app')
    colorscheme badwolf
  else
    colorscheme badwolf
  endif
endif

let g:airline_theme = 'badwolf'

" Disambiguate ,a & ,t from the Align plugin, making them fast again.
"
" This section is here to prevent AlignMaps from adding a bunch of mappings
" that interfere with the very-common ,a and ,t mappings. This will get run
" at every startup to remove the AlignMaps for the *next* vim startup.
"
" If you do want the AlignMaps mappings, remove this section, remove
" ~/.vim/bundle/Align, and re-run rake in maximum-awesome.
function! s:RemoveConflictingAlignMaps()
  if exists("g:loaded_AlignMapsPlugin")
    AlignMapsClean
  endif
endfunction
command! -nargs=0 RemoveConflictingAlignMaps call s:RemoveConflictingAlignMaps()
silent! autocmd VimEnter * RemoveConflictingAlignMaps

let g:NERDTreeWinPos = "left"

let g:gitgutter_enabled = 1

" Bubble single lines
" nmap <leader>u ddkP
" nmap <leader>d ddp

autocmd QuickFixCmdPost *grep* cwindow

" TODO should only set this for python
set shiftwidth=4                                             " normal mode indentation commands use 4 spaces
set softtabstop=4                                            " insert mode tab and backspace use 4 spaces
