Plug 'Pocco81/TrueZen.nvim'
Plug 'folke/twilight.nvim'

map <leader>tz :TZAtaraxis<CR>

augroup ZenModeOverrides
    autocmd!
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/true-zen.lua
augroup end
