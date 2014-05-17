set number
syntax on

autocmd BufReadPost,BufEnter,FileReadPost,BufNewFile * let &titlestring = ' ' . expand("%:t")
set title
