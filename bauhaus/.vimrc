set number
syntax on

set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set laststatus=2

" Change autocomplete to cycle with presses of Ctrl + n
set completeopt-=menu

" Change appearance of vsp to NOT BE FUCKING UGLY
set fillchars=vert:\│
hi VertSplit cterm=none

execute pathogen#infect()
filetype plugin indent on

" Airline config
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1

" Open NERDTree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" If NERDTree is the only thing left open, close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Turn off GitGutter by default
let g:gitgutter_enabled = 0
