function! DownloadTheme(name, url)
	let l:filename = "~/.vim/colors/" . a:name . ".vim"
	let l:curlcmd = "!curl -fLo " . l:filename . " --create-dirs " . a:url
	if empty(glob(l:filename))
		silent exec l:curlcmd
	endif
endfunction

call DownloadTheme("monokai", "https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim")
call DownloadTheme("tender-contrast", "https://raw.githubusercontent.com/jacoborus/tender.vim/master/colors/tender-contrast.vim")
call DownloadTheme("wellsokai", "https://raw.githubusercontent.com/wellsjo/wellsokai.vim/master/colors/wellsokai.vim")
call DownloadTheme("luna-term", "https://raw.githubusercontent.com/notpratheek/vim-luna/master/colors/luna-term.vim")
colorscheme luna-term

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
Plug 'Shougo/neocomplete.vim'
Plug 'ternjs/tern_for_vim', { 'dir': '~/.vim/plugged/tern_for_vim', 'do': 'npm install' }
Plug 'sheerun/vim-polyglot'
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'fatih/vim-go'
" Plug 'scrooloose/syntastic'
call plug#end()

set nocompatible
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set scrolloff=5
set number
set relativenumber
set cursorline
set lazyredraw
set showmatch
set ignorecase
set smartcase
set showcmd
set list
set visualbell
set hlsearch
set nobackup
" set incsearch " in vim-sensible
" set wildmenu " in vim-sensible

let mapleader = ' '
nmap <esc> :nohlsearch<cr>^[
nmap ; :
nmap Q @q

imap jk <esc>
imap <c-h> <c-o>h
imap <c-j> <c-o>j
imap <c-k> <c-o>k
imap <c-l> <c-o>l

nmap H 0
nmap L $
nmap <c-n> *zz
nmap <c-p> #zz
nmap <c-t> :tabe<cr>
nmap <c-l> :tabn<cr>
nmap <c-h> :tabp<cr>
" nmap <c-w> :tabclose<cr> " can't have it all
nmap <tab> <c-w>w
nmap <s-tab> <c-w>W

nmap <leader>ff :FZF<cr>
nmap <leader>tt :NERDTreeToggle<cr>
nmap <leader>tn :colorscheme 
nmap <leader>fed :e ~/.vimrc<cr>
nmap <leader>feR :so $MYVIMRC<cr>
nmap <leader>fs :update<cr>
nmap <leader>qq :call Bye()<cr>
nmap <leader>st :call ToggleShowInvisibleCharacters()<cr>
nmap <leader>wq :update<cr>:q<cr>
nmap <leader>ww <c-w><c-w>
nmap <leader>vsp :vsp .<cr>
nmap <leader>fj :e .<cr>
nmap <leader>bn :bn<cr>
nmap <leader>bb :BufExplorer<cr>
nmap <leader>] :bnext<cr>
nmap <leader>[ :bprev<cr>
nmap <leader>gd :TernDef<cr>
nmap <leader>ty :TernType<cr>
nmap <leader>tr :TernRefs<cr>
nmap <leader>re :TernRename<cr>
nmap <leader>l G=gg<c-o><c-o>

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_interfaces = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_build_constraints = 1
" let g:go_fmt_command = "goimports"

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" quit if useless, otherwise close buffer
function! Bye()
	if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
		:q
	else
		:bdelete
	endif
endfunction

function! ToggleShowInvisibleCharacters()
	if &list
		:set nolist
	else
		:set list
	endif
endfunction
