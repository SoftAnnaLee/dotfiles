Plug 'jose-elias-alvarez/typescript.nvim'
Plug 'mhartington/formatter.nvim'

augroup TypescriptOverrides
    autocmd!
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/typescript.lua
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/formatter.lua
augroup end
