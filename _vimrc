"needs updated with latest settings
source $VIMRUNTIME/mswin.vim
behave mswin

set nocompatible
filetype off
syntax on
filetype plugin indent on
set modelines=0
set number
set ruler
set encoding=utf-8
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

set guifont=Consolas:h12
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set guioptions-=m guioptions-=T
set lines=40 columns=80
set nowrap formatoptions-=t textwidth=0 wrapmargin=0
:colo osiriscolors
set background=dark
set clipboard=unnamed
noremap <BS> <PageUp>
noremap <Space> <PageDown>

"automatically reload changed file
set autoread
"turn off beeps
set visualbell

"~/.vim needs to be created to use these
set backupdir=~/.vim//,.
set directory=~/.vim//,.
set undodir=~/.vim//,.
set undofile
