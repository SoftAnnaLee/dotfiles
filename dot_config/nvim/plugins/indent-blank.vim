Plug 'lukas-reineke/indent-blankline.nvim'

let g:indentLine_fileTypeExclude = ['help', 'alpha']
let g:indent_blankline_buftype_exclude = ['terminal']

augroup IndentBlanklineOverrides
    autocmd!
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/indent-blank.lua
augroup end
