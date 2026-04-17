
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
set termguicolors
let g:suda_smart_edit = 1
" set background=light
call plug#begin()

" Plug 'vim-airline/vim-airline'
" Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'tc50cal/vim-terminal'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'sainnhe/everforest'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'tpope/vim-commentary'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'https://github.com/lambdalisue/vim-suda'
Plug 'folke/tokyonight.nvim'
call plug#end()
lua << END
require('lualine').setup { 
	options = { theme = 'tokyonight'}
}
require'colorizer'.setup({
	'*';
})
END

colorscheme tokyonight 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-c> :Commentary<CR>
