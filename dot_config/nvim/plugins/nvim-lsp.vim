Plug 'neovim/nvim-lspconfig'           " Collection of common LSP client config
Plug 'williamboman/nvim-lsp-installer' " Automate LSP installation
Plug 'simrat39/rust-tools.nvim'        " LSP tools for rust

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" Show diagnostic popup on cursor hold
" autocmd CursorHold * lua vim.diagnostic.open_float()

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
"
augroup NvimLSPOverrides
    autocmd!
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/nvim-lsp.lua
augroup end
