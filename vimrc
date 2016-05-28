if empty(glob('~/.vim/colors/monokai.vim'))
	silent !curl -fLo ~/.vim/colors/monokai.vim --create-dirs
		\ https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
endif
if empty(glob('~/.vim/colors/cake.vim'))
	silent !curl -fLo ~/.vim/colors/cake.vim --create-dirs
		\ https://raw.githubusercontent.com/GGalizzi/cake-vim/master/colors/cake.vim
endif
colorscheme monokai

" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'jlanzarotta/bufexplorer'
Plug 'jiangmiao/auto-pairs'
"Plug 'fatih/vim-go'
Plug 'Shougo/neocomplete.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'scrooloose/syntastic'
call plug#end()

set tabstop=4
set shiftwidth=4
set encoding=utf-8
set scrolloff=5
set number
set relativenumber
set cursorline
set wildmenu
set lazyredraw
set showmatch
set ignorecase
set smartcase
set showcmd
set list
set visualbell
set hlsearch
set incsearch
set nobackup

let mapleader = ' '
nmap <esc> :noh<cr><esc>
nmap ; :
nmap Q @q
nmap <leader>ff :FZF<cr>
imap jk <esc>
imap <c-h> <c-o>h
imap <c-j> <c-o>j
imap <c-k> <c-o>k
imap <c-l> <c-o>l
nmap <c-n> *zz
nmap <c-p> #zz
nmap b] :bnext<cr>
nmap b[ :bprev<cr>
nmap <c-t> :tabe<cr>
nmap <c-l> :tabn<cr>
nmap <c-h> :tabp<cr>
nmap <c-w> :tabclose<cr>
nmap <tab> <c-w>w
nmap <s-tab> <c-w>W
nmap <leader>t :NERDTreeToggle<cr>
nmap <leader>fed :e ~/.vimrc<cr>
nmap <leader>feR :so $MYVIMRC<cr>
nmap <leader>fs :update<cr>
nmap <leader>qq :call Bye()<cr>
nmap <leader>wq :update<cr>:q<cr>
nmap <leader>ww <c-w><c-w>
nmap <leader>vsp :vsp .<cr>
nmap <leader>fj :e .<cr>
nmap <leader>bn :bn<cr>
nmap <leader>bb :BufExplorer<cr>

"  Use neocomplete.
let g:neocomplete#enable_at_startup = 1
"" Use smartcase.
let g:neocomplete#enable_smart_case = 1
"
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_interfaces = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
"let g:go_fmt_command = "goimports"
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" quit if useless, otherwise close buffer
function! Bye()
	if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
		:q
	else
		:bdelete
	endif
endfunction
