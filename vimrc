set nocompatible
filetype off
syntax on

" Plugins 
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
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

" Turn off arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Mouse useage
set mouse=a
set ttyfast

" UI Stuff
set encoding=utf-8
set number
set relativenumber
set cursorline
set hlsearch
colorscheme solarized

" Turn off backup files
set nobackup
set nowritebackup
set noswapfile

" Auto source .vimrc on save
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Auto set syntax=typescript when filetype is *.ts
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
