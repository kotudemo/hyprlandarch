
set number relativenumber
set tabstop=4
set smarttab
set shiftwidth=4
set autoindent 
set softtabstop=4
set mouse=a
set clipboard+=unnamedplus
set title 
set hlsearch
set incsearch
set ignorecase
set smartcase
set noswapfile
set autochdir
" set background=light
call plug#begin()

" Plug 'vim-airline/vim-airline'
" Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'tc50cal/vim-terminal'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-commentary'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

lua << END
require('lualine').setup { 
	options = { theme = 'gruvbox_dark'}}
END

colorscheme gruvbox

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-c> :Commentary<CR>
