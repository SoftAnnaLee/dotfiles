Plug 'jose-elias-alvarez/buftabline.nvim' 
Plug 'kyazdani42/nvim-web-devicons'

augroup BufTabLineOverrides
    autocmd!
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/buftabline.lua
    " autocmd User PlugLoaded ++nested lua require("buftabline").setup({tab_format = " #{n}: #{b}#{f} #{i} "})
augroup end
