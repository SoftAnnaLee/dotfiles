Plug 'hrsh7th/nvim-cmp'                " Completion framework
Plug 'hrsh7th/cmp-nvim-lsp'            " LSP completion source for nvim-cmp
Plug 'hrsh7th/cmp-vsnip'               " Snippet completion source for nvim-cmp
" Plug 'hrsh7th/vim-vsnip-integ'         " cmp-vsnip intergration for nvim-lsp
Plug 'hrsh7th/cmp-path'                " Path completion source for nvim-cmp
Plug 'hrsh7th/cmp-buffer'              " Buffer completion source for nvim-cmp
Plug 'f3fora/cmp-spell'                "Completion source based on vim's spellsuggest" 

set completeopt+=menuone  "Show menu when there is only one suggestion
set completeopt+=noinsert "Don't insert until user selects an option
set shortmess+=c          "Turn off completion messages
set completeopt-=preview

" Configuration is in source ~/.config/nvim/plugins/nvim-cmp.lua
augroup NvimCmpOverrides
    autocmd!
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/nvim-cmp.lua
augroup end
