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
 
 " CtrlP - an alternative to Command-T and FuzzyFinder for fuzzy openning
 Bundle 'kien/ctrlp.vim'

 " Tagbar 
 Bundle 'majutsushi/tagbar'

 " Sytastic
 Bundle 'scrooloose/syntastic'

 " Zen coding
 Bundle 'mattn/zencoding-vim'

 " AutoClose
 Bundle 'Townk/vim-autoclose'

 " Surround
 Bundle 'tpope/vim-surround'

 " T-comment
 Bundle 'tomtom/tcomment_vim'

 " Snipmate
 " install snipMate dependencies
 Bundle "MarcWeber/vim-addon-mw-utils"
 Bundle "tomtom/tlib_vim"
 Bundle "honza/snipmate-snippets"
 " install snipMate
 Bundle "garbas/vim-snipmate"

 filetype plugin indent on     " required!
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..


"===============================================
"	snipMate setup
"===============================================

"===============================================
"	Solarized Colorscheme
"===============================================
syntax enable
set background=dark
colorscheme solarized
set guifont=Monaco:h14

"===============================================
"	Search options
"===============================================
" non case sensitive mode
set ignorecase

" if case defined use it
set smartcase

" show search result while search
set incsearch

"===============================================
"	GUI
"===============================================
set number
set wildmenu
set guioptions-=T
" set tabstop=3
set shiftwidth=3

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

nmap <M-n> :NERDTreeToggle <cr> 

" setup for ctrlP plugin
map <C-o> :CtrlP <cr>
map <S><C-o> :CtrlPMRU <cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pdf,*.png     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" map for toggling NerdTree plugin
nmap <C-n> :NERDTreeToggle<cr>

" zen coding expand and go to normal mode
" imap <C-e> <C-y>,gj
imap <Leader>e <C-y>,

"===============================================
"	Syntastic settings
"===============================================
" Mapping for going through error list
map <Leader>gn :lnext<cr>
map <Leader>gp :lnext<cr>

let g:syntastic_enable_signs=1
let g:syntastic_enable_highlighting = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_csslint_options = 1 
" show only errors not warnings
let g:syntastic_quiet_warnings=1
