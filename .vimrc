"" vim-plug stuffs. Leave at the beginning of this conf file
" This will automatically install vim-plug if it's not installed yet.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
" --------
call plug#begin()
Plug 'itchyny/lightline.vim' " An alternative to vim-powerline
Plug 'tpope/vim-surround' " To easily change the brackets quotes and tags
Plug 'tpope/vim-commentary' " To easily toggle comments
Plug 'joshdick/onedark.vim', { 'do': 'cp ~/.vim/plugged/onedark.vim/autoload/lightline/colorscheme/onedark.vim ~/.vim/plugged/lightline.vim/autoload/lightline/colorscheme/' } " OneDark theme with auto installation of lightline colorscheme
Plug 'sheerun/vim-polyglot' " For more language highlighting support
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

" Lightline plugin setup
" -----------------------
let g:lightline = {
\ 'colorscheme': 'onedark',
\ }

let mapleader = ","
nmap <Leader>t :FZF<CR>
nmap <Leader>v :vsp<CR>
"" General
" ---------
set number	"Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=80	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
" set visualbell	" Use visual bell (no beeping) Eew, I hate the visual bell
set laststatus=2 " Mainly so that Lightline plugin can show up on single screens

set swapfile
set dir=~/Work/swaps
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set noshowmode " Lightline plugin is already showing the mode we're in

set autoindent	" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set tabstop=4	" Number of spaces per Tab
set noexpandtab " Use tabs, not spaces
set mouse=a
let g:netrw_dirhistmax = 0 " I don't need any history or bookmark keeping

"" Advanced
" ----------
set ruler	" Show row and column ruler information
set showtabline=2	" Show tab bar

set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" Makes copying and pasting between vim and
" other programs a breeze. Make sure to build
" vim with clipboard support for this to work
set clipboard=unnamedplus


" Making browsing split panes great again!
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new panes on the right (:vsp) and below (:sp) instead of the default left and top
set splitbelow
set splitright


" Show invisibles
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
set list

" Map Escape to jj to easily switch between insert and normal mode
inoremap jj <ESC>


set colorcolumn=80	" Set a column at 80

" -----------
syntax on
" set background=dark
colorscheme onedark
