syntax on
filetype plugin indent on
let g:python_host_prog='/usr/bin/python2'

set nu
set ts=2
set sts=2
set sw=2
set expandtab
set mouse-=a
set laststatus=2
set hlsearch
set background=dark

let g:airline_powerline_fonts = 1
let g:airline_theme='jellybeans'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:vaxe_hxproj=1
let g:deoplete#enable_at_startup=1

let base16colorspace=256
let t_Co=256

let $PATH = $PATH . ':' . expand('~/.local/bin')

execute pathogen#infect()

colorscheme base16-tomorrow

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let mapleader = ","
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_guard = 2


" Vim-multiple-cursors plays nice with Deoplete
" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  let g:deoplete#disable_auto_complete = 1
endfunction
" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  let g:deoplete#disable_auto_complete = 0
endfunction
