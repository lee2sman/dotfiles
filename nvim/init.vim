" Lee's semi-minimal vimrc for Neovim with Vim-Plug
" Last change:	         2020 May
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

" Tabs are equivalent to two spaces
set shiftwidth=2

" This setting means that yanking in vim will place the text in the system
" clipboard and you can paste p in another tab/instance of nvim
" Works on my Ubuntu Linux but I haven't tested on a Mac/Win
" Did not work in vanilla Vim for me
set clipboard+=unnamedplus

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

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

call plug#end()

let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
