syntax on

set nu
set relativenumber
set nobackup
set noundofile
set tabstop=2
set autoindent

highlight colorcolumn ctermbg=red
call matchadd('colorcolumn', '\%81v', 100)

nnoremap ; :
