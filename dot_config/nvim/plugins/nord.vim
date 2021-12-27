" Plug 'arcticicestudio/nord-vim'
Plug 'shaunsingh/nord.nvim'

" Make sidebars and popup menus like nvim-tree and telescope have a different
" background
let g:nord_contrast = v:false
" Enable the border between verticaly split windows visable
let g:nord_borders = v:true
" Disable the setting of background color so that NeoVim can use your terminal
" background
let g:nord_disable_background = v:false
" Set the cursorline transparent/visible
let g:nord_cursorline_transparent = v:false
" Re-enables the backgrond of the sidebar if you disabled the background of
" everything
let g:nord_enable_sidebar_background = v:false
" enables/disables italics
let g:nord_italic = v:true

augroup NordOverrides
    autocmd!
    autocmd ColorScheme nord highlight Comment cterm=italic gui=italic
    autocmd User PlugLoaded ++nested colorscheme nord
augroup end
