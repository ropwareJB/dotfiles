
syntax on
filetype plugin indent on
let g:python_host_prog='/usr/bin/python2'

set nu
set ts=2
set sts=2
set sw=2
set mouse-=a
set laststatus=2
set hlsearch
set background=dark
set list                             " Show tabs vs spaces
set signcolumn=number                " Merge the gutter and number cols
set cursorcolumn                     " highlight the current column
highlight cursorcolumn guibg=#282828

let g:airline_powerline_fonts = 1
let g:airline_theme='jellybeans'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

let base16colorspace=256
let t_Co=256
let $PATH = $PATH . ':' . expand('~/.local/bin')

execute pathogen#infect()
colorscheme base16-tomorrow

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

" Show hidden files in NerdTree
let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Store OS in variable for OS-specific configuration
" https://vi.stackexchange.com/a/2577
if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

if g:os == "Darwin"
	
elseif g:os == "Linux"
	source init-linux.vim
elseif g:os == "Windows"

endif
