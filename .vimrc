set number
set expandtab
set tabstop=2
set shiftwidth=2

syntax enable
set background=dark
colorscheme solarized

" plugin settings
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdtree'

call vundle#end()
filetype plugin indent on
