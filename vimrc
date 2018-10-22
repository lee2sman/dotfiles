" Lee's semi-minimal vimrc for Neovim with Vim-Plug
" Last change:	         2018 October
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
set number

call plug#begin('~/.config/nvim/plugged')
" Plugins will go here in the middle.
Plug 'tpope/vim-sensible'

" distraction-free writing in vim
Plug 'junegunn/goyo.vim'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Sonic Pi in Neovim
Plug 'dermusikman/sonicpi.vim'

" Vimwiki
Plug 'vimwiki/vimwiki'

call plug#end()

let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
