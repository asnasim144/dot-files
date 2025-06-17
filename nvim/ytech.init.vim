" =======================
"   PLUGIN MANAGEMENT
" =======================
call plug#begin('~/.local/share/nvim/plugged')

" File explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Statusline & Tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colorschemes
Plug 'gruvbox-community/gruvbox'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

" Syntax highlighting & Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" LSP & Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" Commenting, autopairs, etc.
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

" Terminal integration
Plug 'voldikss/vim-floaterm'

call plug#end()

" =======================
"   GENERAL SETTINGS
" =======================
set nocompatible
set encoding=utf-8
set number
set relativenumber
set mouse=a
set termguicolors
set clipboard=unnamedplus
set tabstop=4 shiftwidth=4 expandtab
set smartindent
set autoindent
set wrap
set cursorline
set laststatus=2
set showcmd
set wildmenu
set wildmode=list:longest,full
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set updatetime=300
set hidden

" =======================
"   COLORS AND UI
" =======================
syntax on
filetype plugin indent on
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = "hard"
set background=dark
colorscheme gruvbox

" =======================
"   KEY MAPPINGS
" =======================
let mapleader="\<Space>"
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>t :FloatermToggle<CR>
nnoremap <leader>c :NERDCommenterToggle<CR>
nnoremap <leader>h :nohlsearch<CR>

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" =======================
"   PLUGIN CONFIGURATION
" =======================
" Airline
let g:airline_powerline_fonts = 1

" NERDTree
let NERDTreeShowHidden=1

" Auto Pairs
let g:AutoPairsFlyMode = 1

" Gitsigns (requires Lua, see docs)

" =======================
"   COC (LSP & COMPLETION)
" =======================
" Use <Tab> for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Use <CR> to confirm completion.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" GoTo code navigation
nmap gd <Plug>(coc-definition)
nmap gy <Plug>(coc-type-definition)
nmap gi <Plug>(coc-implementation)
nmap gr <Plug>(coc-references)

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Show documentation
nnoremap <silent> K :call CocActionAsync('doHover')<CR>

" =======================
"   AUTOCOMMANDS
" =======================
" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Return to last edit position when reopening file
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" =======================
"   MISC
" =======================
set undofile
set undodir=~/.config/nvim/undo
set history=1000

set clipboard=

noremap ""y ""y
noremap ""yy ""yy
noremap ""p ""p
noremap ""P ""P

noremap <expr> y (v:register ==# '"' ? '"+' : '') . 'y'
noremap <expr> yy (v:register ==# '"' ? '"+' : '') . 'yy'
noremap <expr> p (v:register ==# '"' ? '"+' : '') . 'p'
noremap <expr> P (v:register ==# '"' ? '"+' : '') . 'P'

" ========== END ==========
