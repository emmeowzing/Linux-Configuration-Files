" My vimrc
" Brandon Doyle
" April 21, 2018

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'sjl/badwolf'            " colorscheme
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'   " for autocompleting braces and brackets
Plugin 'derekwyatt/vim-scala'
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'danro/rename.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tinco/haskell.vim'
Plugin 'NLKNguyen/papercolor-theme'
call vundle#end()

filetype plugin indent on
syntax enable

set nocompatible
set tabstop=4       " set tabs to 4 spaces
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " reindent ops
set expandtab       " convert tabs to spaces
set smarttab
set number          " line numbering
set showcmd         " show last command in bottom-right

set cursorline      " underline the line your cursor is on, so it's
                    " easier to go back after flipping between windows

set showmatch       " highlight matching [{()}]

set incsearch
set hlsearch        " search as you're typing

set colorcolumn=80  " vertical line for Python

set t_Co=256        " Allow 256 colors; without only supports 8

set backspace=indent,eol,start
set laststatus=2

let g:tex_flavor = "latex"  " for TeX syntax highlighting; :h:tex_flavor
                            " yields options

" Remap keys
noremap ; l
noremap l k
noremap k j
noremap j h

au FileType haskell setl sw=2 sts=2 et " Use 2 spaces for Haskell source files

colorscheme badwolf

" Save all backups in one place
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
