"===============================================
"	Vundle
"===============================================
set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 Bundle 'gmarik/vundle'

 " Solirized Colorscheme
 Bundle 'altercation/vim-colors-solarized'
 
 " NERD-Tree
 Bundle 'scrooloose/nerdtree'
 
 " Tagbar 
 Bundle 'majutsushi/tagbar'

 " Sytastic
 Bundle 'scrooloose/syntastic'

 " Zen coding
 Bundle 'mattn/zencoding-vim'
 
 " Snipmate
 " Bundle 'msanders/snipmate.vim'

 " Surround
 Bundle 'tpope/vim-surround'

 " T-comment
 Bundle 'tomtom/tcomment_vim'


 filetype plugin indent on     " required!
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..


"===============================================
"	Solarized Colorscheme
"===============================================
syntax enable
set background=dark
colorscheme solarized
set guifont=Monaco:h14

"===============================================
"	GUI
"===============================================
set number
set wildmenu
set guioptions-=T
set tabstop=3

" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

"===============================================
"	Mappings
"===============================================
let mapleader = ","
nmap <Leader>ev :tabedit $MYVIMRC <cr>
nmap <space> :
imap gj <esc>

" map for toggling NerdTree plugin
map <C-n> :NERDTreeToggle<CR>

"===============================================
"	...
"===============================================
