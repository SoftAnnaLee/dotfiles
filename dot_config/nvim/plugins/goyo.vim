Plug 'softannalee/goyo.vim'            "Distraction-free writing
Plug 'junegunn/limelight.vim'          "Highlight current textblock


function! s:goyo_enter()
    Limelight
    WP
    set showtabline=0
    set scrolloff=999
    mode
endfunction

function! s:goyo_leave()
    :call buftabline#update(0)
    Limelight!
    NWP
    set scrolloff=7
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

let g:limelight_conceal_ctermfg='darkgrey'
