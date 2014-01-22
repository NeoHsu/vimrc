" neo's vimrc
" Ting-Fu Hsu <NeoHsuDroid@gmail.com>
" GITHUB  https://github.com/NeoHsu/vimrc
" neobundle : auto load all plugins {
if has('vim_starting')
   " be improved
   set nocompatible
   " required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" required:
call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" required:
NeoBundleFetch 'shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" }

" Encoding settings {
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1
" }
"
" General settings {
set number              " show line number
set nocompatible        " not compatible with the old-fashion vi mode
set ruler               " show the cursor position all the time
set autoread            " auto read when file is changed from outside
set bs=2                " allow backspacing over everything in insert mode
set hlsearch            " search highlighting
set incsearch           " incremental search
set confirm             " confirm the action
set cursorline          " highlight current line
set clipboard=unnamed   " yank to the system register (*) by default
set showmatch           " Cursor shows matching ) and }
set showmode            " Show current mode
set wildchar=<TAB>      " start wild expansion in the command line using <TAB>
set wildmenu            " wild char completion menu
set autoindent          " auto indentation
set nobackup            " no *~ backup files
set copyindent          " copy the previous indentation on autoindenting
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab            " insert tabs on the start of a line according to context
" }

" Color Settings {
set t_Co=256
colorscheme Tomorrow-Night
syntax on
" }

" TAB setting {
set expandtab           " replace <TAB> with spaces
set softtabstop=3 
set shiftwidth=3 

au FileType Makefile set noexpandtab
" }