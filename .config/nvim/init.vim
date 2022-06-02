set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set textwidth=100
set mouse=a
set scrolloff=8
set clipboard=unnamedplus
call plug#begin(stdpath('config') . '/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'voldikss/vim-floaterm'
" lsp
Plug 'neovim/nvim-lspconfig'
" Pretty Dress
Plug 'theniceboy/nvim-deus'
"Plug 'arzg/vim-colors-xcode'
Plug 'glepnir/dashboard-nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'hrsh7th/nvim-compe'
" Status line
Plug 'theniceboy/eleline.vim', { 'branch': 'no-scrollbar' }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
" General Highlighter
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'RRethy/vim-illuminate'

" File navigation
Plug 'ibhagwan/fzf-lua'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-rooter'


" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wellle/tmux-complete.vim'

" Snippets
Plug 'theniceboy/vim-snippets'

" Undo Tree
Plug 'mbbill/undotree'

" Git
Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
Plug 'theniceboy/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
Plug 'kdheepak/lazygit.nvim'
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'tweekmonster/braceless.vim', { 'for' :['python', 'vim-plug'] }
Plug 'petertriho/nvim-scrollbar'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'theniceboy/antovim' " gs to switch
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'Yggdroot/indentLine'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
set encoding=UTF-8

call plug#end()
" Mapping
let mapleader=" "
nmap <F8> :TagbarToggle<CR>
noremap ; :
nnoremap <LEADER>q :q<CR>
nnoremap <LEADER>s :w<CR>
" Open the vimrc file anytime
nnoremap <LEADER>rc :e $HOME/.config/nvim/init.vim<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap gl $
nnoremap gh 0
nnoremap ge G
nnoremap W 5w
nnoremap B 5b
nnoremap J 5j
nnoremap K 5k
nnoremap L 5l
nnoremap H 5h
noremap <LEADER>w <C-w>w
noremap <LEADER>k <C-w>k
noremap <LEADER>h <C-w>h
noremap <LEADER>j <C-w>j
noremap <LEADER>v :vs<CR>
inoremap jk <Esc>
" inoremap <LEADER><LEADER> <Esc>
vnoremap gh 0
vnoremap gl $
vnoremap W 5w
vnoremap L 5l
vnoremap H 5h
vnoremap B 5b
nmap <F8> :TagbarToggle<CR>
" inoremap {<CR> {<CR><Esc>$a<CR>}<Esc>k$a<Tab>
:set completeopt-=preview " For No Previews
colorscheme alduin

" float term
let g:floaterm_keymap_new = '<Leader>ft'
let g:floaterm_keymap_toggle = '<Leader>t'
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
" telescope 
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

lua require('pengyo')
