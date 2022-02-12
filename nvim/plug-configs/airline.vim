" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='jsformatter'
let g:airline_theme='ayu_mirage'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tabs_label = ''      
let g:airline#extensions#tabline#buffers_label = ''   
let g:airline#extensions#tabline#fnamemod = ':t'      
let g:airline#extensions#tabline#show_tab_count = 0   
let g:airline#extensions#tabline#show_buffers = 0     
let g:airline#extensions#tabline#show_splits = 0      
let g:airline#extensions#tabline#show_tab_nr = 0      

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
