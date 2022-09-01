""""""" Start of Vundle vim script """""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Git plugin
Plugin 'tpope/vim-fugitive'

" Git diffs at a glance
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""" Non-Vundle related config starts here """""""
colorscheme desert
set number
imap jj <Esc>

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set autoindent

" turn hybrid line numbers on
set number relativenumber

" turn hybrid line numbers off
set nonumber norelativenumber

" toggle hybrid line numbers
set number! relativenumber!

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Setting scrolloff keeps cursor centered when possible
set scrolloff=999

" Registers will store 1000 lines each (default is 50)
" For example, when yanking will only yank 50 lines
" 20 represents the num of files for which marks are remembered
" (not particularly useful for this, but necessary? stkoverflow)
set viminfo='20,<1000

