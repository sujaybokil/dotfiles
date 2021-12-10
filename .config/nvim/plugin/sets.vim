syntax enable
filetype on
set guicursor=
set mouse=a
set nu relativenumber
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set sessionoptions+=options,resize,winpos,terminal
set splitbelow splitright
set ignorecase
set clipboard+=unnamedplus
set colorcolumn=80
set completeopt=menu,menuone,noselect
set cursorline

" Dunno why but looked color
set path+=**

" Ignore files
set wildignore+=*.pyc
set wildignore+=**/.git/*

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c 

" i3 config syntax highlighting
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead * setlocal formatoptions-=ro
aug end

