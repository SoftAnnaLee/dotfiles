Plug 'tami5/lspsaga.nvim'              " LSP UI
"
" LSPsaga.nvim keymaps
" -- lsp provider to find the cursor word definition and reference
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
" -- Code action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>ode_action()<CR>
" -- Show Hover Doc
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
" -- scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" -- scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
" -- show signature help
nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
" -- rename
" -- close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`
nnoremap <silent> gr <cmd>lua require('lspsaga.rename').rename()<CR>
" -- preview definition
nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
" -- show diagnostic
nnoremap <silent><leader>cd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
" -- only show diagnostic if cursor is over the area
nnoremap <silent><leader>cD <cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>
" -- jump diagnostic
nnoremap <silent> [e <cmd>Lspsaga diagnostic_jump_next<cr>
nnoremap <silent> ]e <cmd>Lspsaga diagnostic_jump_prev<cr>
" -- float terminal also you can pass the cli command in open_float_terminal function
nnoremap <silent> <A-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR> 
tnoremap <silent> <A-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>

augroup LSPSagaOverrides
    autocmd!
    autocmd User PlugLoaded ++nested source ~/.config/nvim/plugins/lspsaga.lua
augroup end
