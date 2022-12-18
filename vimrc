""""""" Start of Vundle vim script """""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive' " Git plugin
Plugin 'airblade/vim-gitgutter' " Git diffs at a glance

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""" Non-Vundle related config starts here """""""
syntax on " Necessary on MacOS for displaying syntax
colorscheme desert
imap jj <Esc> 

filetype plugin indent on

set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " Allows for 'shift + >' in visual mode to shift by 4 spaces rather than 8
set expandtab " On pressing tab, insert 4 spaces
set autoindent " Performs proper indentation most of the time

set mouse=a " Allow for mouse clicks on the vim screen.

set number " Line numbers
set number relativenumber " turn hybrid line numbers on
set nonumber norelativenumber " turn hybrid line numbers off
set number! relativenumber!  " toggle hybrid line numbers

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

set scrolloff=999 " Setting scrolloff keeps cursor centered when possible

" Registers will store 1000 lines each (default is 50)
" For example, when yanking will only yank 50 lines
" 20 represents the num of files for which marks are remembered
" (not particularly useful for this, but necessary? stkoverflow)
set viminfo='20,<1000

