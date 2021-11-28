call plug#begin('~/.config/nvim/plugged')

" Dont drive me nuts
Plug 'windwp/nvim-autopairs'

" Swwwweeeet autocompletion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" File tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Neovim Tree shitter and the Git Shit
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'

" Greatest colorscheme known to man
Plug 'joshdick/onedark.vim'

" TJ will be proud
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" A slick statusbar and tabline
Plug 'hoob3rt/lualine.nvim'
Plug 'romgrk/barbar.nvim'

" A sexy startup screen
Plug 'glepnir/dashboard-nvim'

" Who needs tmux now
Plug 'rmagatti/auto-session'
Plug 'rmagatti/session-lens'

" Nice lil docstring generator
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

" Colors hex colors inside vim
Plug 'norcalli/nvim-colorizer.lua'
Plug 'terrortylor/nvim-comment'

" Do u use i3? I do
Plug 'mboughaba/i3config.vim'

" Go full Netero (HunterxHunter)
Plug 'folke/zen-mode.nvim'

call plug#end()

" Color me surprised
set termguicolors

" Import all the config files
lua require("config")

" Hail the leader
let g:mapleader=" "

" Highlight on yank
au TextYankPost * silent! lua require'highlight'.on_yank("IncSearch", 500, vim.v.event)
