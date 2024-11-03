
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
set expandtab
"scrolling begins at 5th line from top or bottom
set scrolloff=5
" ignore case in searching, then if mixed case in search then don't ignore it
set ignorecase
set smartcase

execute pathogen#infect()

" Enable relative line numbers
" set number relativenumber
highlight cursorcolumn guibg=#282828
let base16colorspace=256
let t_Co=256
let $PATH = $PATH . ':' . expand('~/.local/bin')
colorscheme base16-tomorrow

" Generic Bindings
" ##################
let mapleader = ","
nnoremap <C-q> :tabc<CR>
" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
" Reisizing Panels (ALT + Left/Right)
nnoremap <silent> <M-Left> :vertical res -5<CR>
nnoremap <silent> <M-Right> :vertical res +5<CR>

" AST Viewer (Aerials)
nnoremap  <C-a>  :AerialToggle<CR>

" Diagnostics (Trouble)
nnoremap  <C-b>  :Trouble diagnostics toggle<CR>

" Airline
" ##################
let g:airline_powerline_fonts = 1
let g:airline_theme='jellybeans'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" NERDTree Config
" ##################
" Show hidden files in NerdTree
let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR> " Disabeld 
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p " 2024-06-17: Disabled as fzl
" Open the existing NERDTree on each new tab. Disabled 2023-12-16
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" FZF-lua Bindings
" ##################
nnoremap <c-f> <cmd>lua require('fzf-lua').files()<CR>

" OS-Specifics
" ##################
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
	source ~/.config/nvim/init-osx.vim
elseif g:os == "Linux"
	"source ~/.config/nvim/init-linux.vim
elseif g:os == "Windows"
	source ~/.config/nvim/init-win.vim
endif
