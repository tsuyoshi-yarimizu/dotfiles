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
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'iamcco/markdown-preview.nvim'

" vim-gitgutter setting
set updatetime=250

call vundle#end()
filetype plugin indent on

" lightline
set laststatus=2

if !exists('*fugitive#statusline')
    set statusline=%F\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}[L%l/%L,C%03v]
    set statusline+=%=
    set statusline+=%{fugitive#statusline()}
endif

source ~/.vimrc.lightline

set exrc

" nerdtree
let NERDTreeShowHidden=1

" iamcco/markdown-preview
source ~/.vimrc.markdown-preview

