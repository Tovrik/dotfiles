set nocompatible
filetype plugin on
filetype off
syntax on

set encoding=utf-8
set number
set relativenumber

" Plugins 
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi', { 'for': 'typescript', 'do': 'npm install' }
Plugin 'Shougo/vimproc.vim', { 'do': 'make' }
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call vundle#end()

" Auto generate tags
set tags=./tags;

" Set tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Mouse useage
set mouse=a
set ttyfast

colorscheme solarized

" Auto source .vimrc on save
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
