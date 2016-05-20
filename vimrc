if empty(glob('~/.vim/colors/monokai.vim'))
	silent !curl -fLo ~/.vim/colors/monokai.vim --create-dirs
		\ https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
endif
if empty(glob('~/.vim/colors/cake.vim'))
	silent !curl -fLo ~/.vim/colors/cake.vim --create-dirs
		\ https://raw.githubusercontent.com/GGalizzi/cake-vim/master/colors/cake.vim
endif
colorscheme monokai

set tabstop=4									" who came up with 8?
set shiftwidth=4								" i know right?
set number										" show line numbers
set relativenumber								" make line numbers relative
set cursorline									" highlight current line
set wildmenu									" visual autocomplete for cmd
set lazyredraw									" speed up macros
set showmatch									" highlight [{()}]
set ignorecase									" search is case insensitive
set smartcase									" only lower case searches are case insensitive
set showcmd										" show cmd bottom right
set list										" show hidden chars
set visualbell
set hlsearch
set incsearch
set scrolloff=5									" leave 5 rows when scrolling
set encoding=utf-8
set nobackup

" plugins installed with vim-plug
" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'jlanzarotta/bufexplorer'
Plug 'jiangmiao/auto-pairs'
"Plug 'fatih/vim-go'
Plug 'Shougo/neocomplete.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'scrooloose/syntastic'
call plug#end()

" remap leader to space
let mapleader = ' '
" nerdtree
nnoremap <leader>t :NERDTreeToggle<cr>
" remap command key
nnoremap ; :
nnoremap Q @q
nnoremap <leader>ff :FZF<cr>

inoremap jk <esc>
cnoremap jk <esc>
xnoremap jk <esc>

inoremap <c-h> <c-o>h
inoremap <c-j> <c-o>j
inoremap <c-k> <c-o>k
inoremap <c-l> <c-o>l

" center search
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" nav buffers
nnoremap b] :bnext<cr>
nnoremap b[ :bprev<cr>

" nav tabs
nnoremap <c-t> :tabe<cr>
nnoremap <c-l> :tabn<cr>
nnoremap <c-h> :tabp<cr>

" nav windows
nnoremap <tab> <c-w>w
nnoremap <s-tab> <c-w>W

" spacemacs...
nnoremap <leader>fed :e ~/.vimrc<cr>
nnoremap <leader>feR :so $MYVIMRC<cr>
nnoremap <leader>fs :update<cr>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>wq :update<cr>:q<cr>
nnoremap <leader>ww <c-w><c-w>
nnoremap <leader>vsp :vsp .<cr>
nnoremap <leader>fj :e .<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bb :BufExplorer<cr>

"  Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
"" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
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
