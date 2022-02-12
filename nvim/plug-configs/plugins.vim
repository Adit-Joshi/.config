call plug#begin()
Plug 'tpope/vim-surround' " ysiw
Plug 'preservim/nerdtree' " NerdTree
Plug 'PhilRunninger/nerdtree-visual-selection' "Selection for NerdTree
Plug 'tpope/vim-commentary' "Comment using gcc
Plug 'vim-airline/vim-airline' " VimAirline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes' "colorschemes
Plug 'voldikss/vim-floaterm'
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
