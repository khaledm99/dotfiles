" Set leader
let mapleader = ' '
nnoremap <space> <Nop>

" Disable compat w/ vi which can cause issues
set nocompatible

" Enable type file detection
filetype on

" Enable plugins and load plugin for detected file type
filetype plugin on

" Load an indent file for the detected file type
filetype indent on

" Turn on syntax highlighting
syntax on

" Add line numbers
set number relativenumber

" Set shift width to 4 spaces
set shiftwidth=4

" Set tab width to 4 columns
set tabstop=4
set expandtab
set autoindent
set softtabstop=4
set smartindent

" Splits open at bottom and right
set splitbelow splitright

" Disable auto comment on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" highlight searches
set hlsearch 

" while searching, highlight chars as you type
set incsearch

" ignore caps during search
set ignorecase
set smartcase

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode you're on
set showmode

set history=100

" Status line stuff

set ruler

set title

let g:airline#extensions#tabline#enabled = 1

"" REMAPS

" Run .vimrc
    nnoremap <leader>sv :source $MYVIMRC<CR>

" Clear highlight
    nnoremap <leader>n :noh<CR>

" Shortcut to edit .vimrc
    nnoremap <leader>ev :vsplit $MYVIMRC<CR>

" Shortcuts for split navs
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

" nerdtree
    nnoremap <C-n> :e.<CR>

" swap word case in insert mode
    inoremap <c-u> <esc>g~iwi
" Newtab
    nnoremap <silent> <C-t> :tabnew<CR>

" Surround word with stuff
    nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
    nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
    nnoremap <leader>{ viw<esc>a}<esc>bi{<esc>lel
    nnoremap <leader>( viw<esc>a)<esc>bi(<esc>lel

" Quick insert mode exit
    inoremap jk <esc>

" Stop arrow keys in normal mode
    nnoremap <Up> <nop>
    nnoremap <Down> <nop>
    nnoremap <Right> <nop>
    nnoremap <Left> <nop>
"" ABBREVIATIONS
   
" typos
    iabbrev adn and
    iabbrev waht what
    iabbrev tehn then
    iabbrev retunr return
    iabbrev retrun return

" my info
    iabbrev @@ khaled.mograbee@ucalgary.ca
    iabbrev uucid 30095387

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

let NERDTreeHijackNetrw=1
