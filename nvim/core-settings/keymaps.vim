nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :set invhlsearch<CR>
nnoremap <C-k> :tabn<CR>
nmap <C-p> :TagbarToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm(): "<Tab>"
nnoremap <leader>ca :w <bar> %bd <bar> e# <bar> bd# <CR>
map Q gq
