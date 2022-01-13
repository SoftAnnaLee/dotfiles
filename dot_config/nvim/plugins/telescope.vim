" dependencies for telescope
Plug 'nvim-lua/popup.nvim'             " Popup window api
Plug 'nvim-lua/plenary.nvim'           " Lua script collection
Plug 'nvim-telescope/telescope.nvim'   " Extendable fuzzy finder
Plug 'Shatur/neovim-session-manager'   " Session manager
Plug 'fcying/telescope-ctags-outline.nvim'
Plug 'nvim-telescope/telescope-ui-select.nvim'
"Optimized FZF algorithm for telescope
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fl <cmd>Telescope file_browser<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>ft <cmd>Telescope ctags_outline outline<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>
nnoremap <leader>fp <cmd>Telescope projects<cr>
nnoremap <leader>fs <cmd>SessionManager load_session<cr>
nnoremap z= <cmd>Telescope spell_suggest<cr>

augroup TelescopeOverrides
    autocmd!
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/telescope.lua
augroup end
