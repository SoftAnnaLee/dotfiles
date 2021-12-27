Plug 'maxbrunsfeld/vim-yankstack'

" Set P to cycle through old pastes
nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-P> <Plug>yankstack_substitute_newer_paste

let g:yankstack_map_keys = 0
let g:yankstack_yank_keys = ['y']
