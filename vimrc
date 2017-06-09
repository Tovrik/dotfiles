set nocompatible
filetype off
syntax on

set encoding=utf-8
set number
set relativenumber

" Plugins 
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'xolox/vim-easytags' 
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi', { 'for': 'typescript', 'do': 'npm install' }
Plugin 'Shougo/vimproc.vim', {'do': 'make'}
call vundle#end()

set tags=./tags;

" Set tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Mouse useage
set mouse=a
set ttyfast

colorscheme solarized
