Plug 'tpope/vim-repeat'
Plug 'ggandor/lightspeed.nvim'


augroup LightspeedOverrides
    autocmd!
    " autocmd User PlugLoaded ++nested lua 
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/lightspeed.lua
augroup end
