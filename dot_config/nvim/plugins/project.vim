" Vim Script
Plug 'ahmedkhalf/project.nvim'

let g:nvim_tree_respect_buf_cwd = 1

augroup ProjectOverrides
    autocmd!
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/project.lua
augroup end
