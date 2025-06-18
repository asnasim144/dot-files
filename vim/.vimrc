" Vim configuration file

" Enable syntax highlighting
syntax on

" Enable file type detection and plugin loading
filetype plugin indent on

" Set encoding
set encoding=utf-8

" Set line numbers
set number
set relativenumber

" Set tab settings
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Set search settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" Set text wrapping
set wrap
set linebreak
set nolist

" Set cursor line
set cursorline

" Set status line
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]

" Set colorscheme
colorscheme desert

" Enable mouse support
set mouse=a

" Set backup and swap files
set backup
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Create directories if they don't exist
silent !mkdir -p ~/.vim/{backup,swap,undo}

" Set clipboard
set clipboard=unnamedplus

" Key mappings
" Use space as leader key
let mapleader=" "

" Save file
nnoremap <leader>w :w<CR>

" Quit
nnoremap <leader>q :q<CR>

" Save and quit
nnoremap <leader>wq :wq<CR>

" Force quit
nnoremap <leader>Q :q!<CR>

" Toggle search highlighting
nnoremap <leader>h :set hlsearch!<CR>

" Clear search highlighting
nnoremap <leader>c :nohlsearch<CR>

" Move between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize windows
nnoremap <leader>+ :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
nnoremap <leader>> :vertical resize +5<CR>
nnoremap <leader>< :vertical resize -5<CR>

" Plugin management with vim-plug
call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'

" File explorer
Plug 'preservim/nerdtree'

" Git integration
Plug 'tpope/vim-fugitive'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" Commenting
Plug 'tpope/vim-commentary'

" Surround
Plug 'tpope/vim-surround'

" Multiple cursors
Plug 'mg979/vim-visual-multi'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git gutter
Plug 'airblade/vim-gitgutter'

" Indent guides
Plug 'nathanaelkane/vim-indent-guides'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Initialize plugin system
call plug#end()

" Plugin configurations
" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

" Indent guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" FZF
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :GFiles<CR>

" GitGutter
let g:gitgutter_sign_added = '│'
let g:gitgutter_sign_modified = '│'
let g:gitgutter_sign_removed = '│'
let g:gitgutter_sign_removed_first_line = '│'
let g:gitgutter_sign_modified_removed = '│'

" COC
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>" 