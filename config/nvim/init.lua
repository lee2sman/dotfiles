-- Last change:	         2023 June
-- converted from init.vim to init.lua 
--
--  If you don't understand a setting in here, just type ':h setting'.

-- Use Vim settings, rather than Vi settings (much better!).
-- This must be first, because it changes other options as a side effect.
vim.opt.compatible = false

-- Allow backspacing over autoindent, line breaks and start of insert action
vim.opt.backspace = "indent,eol,start"

-- Switch syntax highlighting on
vim.opt.syntax = "on"

-- Enable file type detection and do language-dependent indenting. UPDATE: default in Neovim?
-- filetype plugin indent on

-- Display cursor position on last line or status bar
vim.opt.ruler = true

-- Display status line
vim.opt.laststatus=2

-- Turn on numbering on left side
vim.opt.number = true

-- Tabs are equivalent to two spaces
vim.opt.shiftwidth=2

-- This setting means that yanking in vim will place the text in the system clipboard and you can paste p in another tab/instance of nvim
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }

--To install plugin use :PlugInstall
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
-- Plugins will go here in the middle.
Plug 'tpope/vim-sensible'

-- distraction-free writing in vim
Plug 'junegunn/goyo.vim'

-- NERDTreeToggle (for directory navigation)
Plug ('scrooloose/nerdtree', "{ 'on',  'NERDTreeToggle' }")

-- Sonic Pi in Neovim
Plug 'dermusikman/sonicpi.vim'

-- Vimwiki
Plug 'vimwiki/vimwiki'

-- Markdown Preview
--Plug ('iamcco/markdown-preview.nvim', { 'do', { '-> mkdp#util#install()' }, 'for', ['markdown', 'vim-plug']})
Plug ('iamcco/markdown-preview.nvim', "run = function() vim.fn['mkdp#util#install']() end" )

-- Prettier 
Plug ('prettier/vim-prettier', "{ 'do', 'npm install' }")

-- use fff as a file opener
Plug 'dylanaraps/fff.vim'

vim.call('plug#end')

-- vimwiki settings
vim.g.vimwiki_list = {{path = '~/vimwiki', syntax = 'markdown', ext = '.md'}}

-- settings added to get markdown-preview to work
vim.g.mkdp_browser = 'firefox'
vim.g.mkdp_echo_preview_url = 1

-- allow saving with W (pesky shift key!)
vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('WQ', 'wq', {})

-- launch fff with f
vim.keymap.set('n', 'f', ':F %<cr>')

-- alternate keybinding (Control-N) to toggle nerdtree
vim.keymap.set('n','<C-n>', ':NERDTreeToggle %<cr>')

-- Exit Vim if NERDTree is the only window remaining in the only tab.
vim.cmd("autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif")
