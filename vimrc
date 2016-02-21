" minimal vimrc for new vim users to start with.
"
" Last change:	         2016 Feb 20
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Display cursor position on last line or status bar
set ruler

"Display status line
set laststatus=2

" Turn on numbering on left side
number


