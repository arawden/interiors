set number
syntax on

set expandtab
set shiftwidth=2
set softtabstop=2

autocmd BufReadPost,BufEnter,FileReadPost,BufNewFile * let &titlestring = ' ' . expand("%:t")
set title
