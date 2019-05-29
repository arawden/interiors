" setup Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins
"" functional
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'

"" aesthetic
Plugin 'w0ng/vim-hybrid'
Plugin 'arcticicestudio/nord-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin indent on

" enable mouse
set mouse=a

" line numbers and syntax highlighting
set number relativenumber " hybrid line numbering
syntax on

" spacing and indents
set backspace=2 " normal backspace
set expandtab   " expand tab to spaces
set shiftwidth=2
set softtabstop=2
set smartindent
set laststatus=2

set listchars=tab:>>,trail:• " display trailing whitespace characters
set list

" set split dirctions to feel more natural
set splitbelow
set splitright

" colors
colorscheme nord
set background=dark

" set line number column color
highlight LineNr ctermfg=darkgray

" change appearance of vsp to NOT BE FUCKING UGLY
set fillchars=vert:\│
hi VertSplit cterm=none

" disable automatic comments
set formatoptions-=cro

" change autocomplete to menu
set completeopt-=preview
let g:ycm_confirm_extra_conf = 0 " ignore conflicting configs
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/.ycm_extra_conf.py'

" C switch case indenting
set cinoptions=l1

" Syntax checkers
let g:syntastic_go_checkers=['go']
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args="--max-line-length=120"
" airline config
set timeoutlen=100 ttimeoutlen=10 " Change timeout to fix airline not updating on escape
let g:airline_theme = "nord"
let g:airline#extensions#tabline#enabled = 1

" open NERDTree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" if NERDTree is the only thing left open, close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" copy to system clipboard
set clipboard=unnamedplus
