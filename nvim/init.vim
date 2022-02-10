set number
set relativenumber
set termguicolors
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set clipboard=unnamedplus
set autochdir
set splitbelow
set splitright
set ruler
set background=light
set showtabline=2
set updatetime=300
set timeoutlen=300
set fileencoding=utf-8
set cursorline

call plug#begin()
Plug 'tpope/vim-surround' " ysiw
Plug 'preservim/nerdtree' " NerdTree
Plug 'PhilRunninger/nerdtree-visual-selection' "Selection for NerdTree
Plug 'tpope/vim-commentary' "Comment using gcc
Plug 'vim-airline/vim-airline' " VimAirline
Plug 'rafi/awesome-vim-colorschemes' "colorschemes
Plug 'tc50cal/vim-terminal' "Terminal Split
Plug 'preservim/tagbar' "Vim Tagbar
Plug 'jiangmiao/auto-pairs' "Auto-pair
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " Auto-completion
Plug 'ryanoasis/vim-devicons' "Devicons
Plug 'junegunn/fzf.vim' " Required for running the Dashboard, :Ag and :Rg commands
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'honza/vim-snippets' " Snippets for ALL languages
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
call plug#end()

" Notes
" Call :CocList snippets to list the snippets for the current file.
" Call :CocInstall coc-snippets to install the snippets engine
" Call :CocInstall coc-python for python installation of auto-completion
" Call :CocInstall coc-java for java installation of auto-completion
" Call PlugUpgrade to upgrade all the plugins.

set completeopt=longest,menuone
colorscheme jellybeans

" Keymaps for making your life so easier.
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :set invhlsearch<CR>
nnoremap <C-k> :tabn<CR>
nmap <C-p> :TagbarToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm(): "<Tab>"
map Q gq

"Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='jsformatter'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"Signify config
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

"NerdTree config
au BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
au StdinReadPre * let s:std_in=1
au VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
