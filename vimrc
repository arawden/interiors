set number
syntax on
filetype plugin indent on

set backspace=2 " Normal backspace
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set laststatus=2

set listchars=tab:>>,trail:•
set list

set colorcolumn=81
highlight ColorColumn ctermbg=7

" Enable mouse
set mouse=a

" Change autocomplete to cycle with presses of Ctrl + n
set completeopt-=menu

" Change appearance of vsp to NOT BE FUCKING UGLY
set fillchars=vert:\│
hi VertSplit cterm=none

execute pathogen#infect()
filetype plugin indent on

" Airline config
set timeoutlen=100 " Change timeout to fix airline not updating on escape
let g:airline_powerline_fonts = 1
let g:airline_theme = "ubaryd"
let g:airline#extensions#tabline#enabled = 1

" Open NERDTree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" If NERDTree is the only thing left open, close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Turn off GitGutter by default
let g:gitgutter_enabled = 0

" Syntastic checker customization
let g:syntastic_html_checkers = ['jshint', 'tidy']
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_html_tidy_ignore_errors=["proprietary attribute \"ng-", "proprietary attribute \"ui-"]
hi SpellBad ctermbg=003
hi SpellCap ctermbg=011

" Copy to system clipboard
set clipboard=unnamed

" Disable folding in Markdown
let g:vim_markdown_folding_disabled=1
