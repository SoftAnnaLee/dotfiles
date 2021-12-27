Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'p00f/nvim-ts-rainbow'

set foldexpr=nvim_treesitter#foldexpr()

augroup TreesitterOverrides
    autocmd!
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/treesitter.lua
augroup end
