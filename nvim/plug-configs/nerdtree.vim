"NerdTree config
au BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
au VimEnter * NERDTree | wincmd p
