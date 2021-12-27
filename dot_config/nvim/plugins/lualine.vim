Plug 'nvim-lualine/lualine.nvim'

lua <<EOF
EOF

augroup LuaLineOverrides
    autocmd!
    " autocmd User PlugLoaded ++nested lua 
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/lualine.lua
augroup end
