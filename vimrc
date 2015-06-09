syntax on

set nu
set relativenumber
set nobackup
set noundofile

highlight colorcolumn ctermbg=red
call matchadd('colorcolumn', '\%81v', 100)

exec "set listchars=trail:\uB7,nbsp:~"
set list

nnoremap ; :
