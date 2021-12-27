Plug 'goolord/alpha-nvim'

augroup AlphaOverrides
    autocmd!
    au FileType alpha set showtabline=0 | au BufUnload <buffer> set showtabline=2
    au FileType alpha set laststatus=0 | au BufUnload <buffer> set laststatus=2
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/alpha.lua
augroup end
