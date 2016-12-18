" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup " do not keep a backup file
set history=50 " keep 50 lines of command line history
set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set incsearch " do incremental searching
set cursorline
set number 
set wildmenu  
set showmatch
set so=5 " j/k padding
set autoread " Read external changes

set expandtab
set shiftwidth=2
set softtabstop=2

set encoding=utf8

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

syntax enable
colorscheme github
set hlsearch

