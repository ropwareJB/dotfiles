:filetype plugin on
execute pathogen#infect()
syntax on
filetype plugin indent on

set nu
set ts=2
set sts=2
set sw=2

let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'
let base16colorspace=256
set t_Co=256
set laststatus=2

set background=dark
colorscheme colorsbox-stnight

set hlsearch

"let g:vaxe_flow_target='web'
let g:vaxe_flow_target='linux'


" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction
