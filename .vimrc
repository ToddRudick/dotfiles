set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" All of your Plugins must be added before the following line
" plugin on GitHub repo
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()            " required


execute pathogen#infect()

filetype plugin on
syntax on
au BufRead,BufNewFile,BufEnter *.def set syntax=cpp
au BufRead,BufNewFile,BufEnter *.cpp set syntax=cpp
au BufRead,BufNewFile,BufEnter *.h set syntax=cpp
au BufRead,BufNewFile,BufEnter *.hpp set syntax=cpp

set nocompatible
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set showmatch
set cinoptions=l1

autocmd Syntax * syn match ExtraWhitespace /^\s*\t/
highlight ExtraWhitespace ctermbg=234 guibg=darkblue
set tags=./tags;/
set ruler
imap <silent><script><expr> <C-e> copilot#Accept('\<CR>')
"let g:copilot_no_tab_map = v:true
let g:copilot_assume_mapped = v:true

au BufRead,BufNewFile,BufEnter /home/todd/projects/CppMatchingEngine/* setlocal ts=4 sw=4
