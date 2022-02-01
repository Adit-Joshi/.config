:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard=unnamed

call plug#begin()
Plug 'tpope/vim-surround' " ysiw
Plug 'preservim/nerdtree' "NERDTree
Plug 'tpope/vim-commentary' "Comment using gcc
Plug 'vim-airline/vim-airline' " VimAirline
Plug 'ap/vim-css-color' "CSS color helper
Plug 'rafi/awesome-vim-colorschemes' "colorschemes
Plug 'tc50cal/vim-terminal' "Terminal Split
Plug 'preservim/tagbar' "Vim Tagbar
Plug 'github/copilot.vim' "GitHub Copilot
Plug 'jiangmiao/auto-pairs' "Auto-pair
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " Auto-completion
Plug 'ryanoasis/vim-devicons' "Devicons
Plug 'vim-airline/vim-airline-themes' " Theme for the VimAirline
Plug 'junegunn/fzf.vim' " Required for running the Dashboard, :Ag and :Rg commands
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'honza/vim-snippets' " Snippets for ALL languages
Plug 'glepnir/dashboard-nvim' " Dashboard for NeoVim
call plug#end()

" Notes
" Call :CocList snippets to list the snippets for the current file.
" Call :CocInstall coc-snippets to install the snippets engine
" Call :CocInstall coc-python for python installation of auto-completion
" Call :CocInstall coc-java for java installation of auto-completion
" Call PlugUpgrade to upgrade all the plugins.

:set completeopt-=preview
:colorscheme slate

" Keymaps for making your life so easier.
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :set invhlsearch<CR>
nnoremap <C-k> :tabn<CR>
nmap <C-p> :TagbarToggle<CR>

let g:dashboard_default_executive='fzf'
let g:airline_powerline_fonts = 1

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

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm(): "<Tab>"
