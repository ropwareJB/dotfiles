:filetype plugin on
execute pathogen#infect()
syntax on
filetype plugin indent on

let g:python_host_prog='/usr/bin/python2'

set nu
set ts=2
set sts=2
set sw=2

let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'
let base16colorspace=256
set t_Co=256
" in case t_Co alone doesn't work, add this as well:
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
set laststatus=2
set hlsearch
set background=dark
colorscheme colorsbox-stnight


"let g:vaxe_flow_target='web'
let g:vaxe_hxproj=1

let g:deoplete#enable_at_startup=1

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
