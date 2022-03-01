Plug 'simrat39/symbols-outline.nvim'

nmap <silent> <F1> :SymbolsOutline<CR>

augroup SymbolsOutlineOverrides
    autocmd!
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/symbol-outline.lua
augroup end
