Plug 'preservim/tagbar'                "Bar of tags on right side of window

nmap <silent> <F8> :TagbarToggle c<CR>

" let g:tagbar_ctags_bin = ''
" let g:tagbar_ctags_options =  []
let g:tagbar_position = 'botright vertical'
let g:tagbar_height = 0
let g:tagbar_width = 40
let g:tagbar_zoomwidth = 1
let g:tagbar_autoclose = 0
let g:tagbar_autofocus = 0
let g:tagbar_sort = 1
let g:tagbar_case_insensitive = 0
let g:tagbar_compact = 0
let g:tagbar_help_visibility = 0
let g:tagbar_indent = 2
let g:tagbar_show_balloon = 1
let g:tagbar_show_data_type = 0
let g:tagbar_show_visibility = 1
let g:tagbar_visibility_symbols = {
\ 'public'    : '+',
\ 'protected' : '#',
\ 'private'   : '-'
\ }
let g:tagbar_show_linenumbers = 0 
let g:tagbar_show_tag_linenumbers = 2
let g:tagbar_show_tag_count = 0
let g:tagbar_hide_nonpublic = 0
let g:tagbar_expand = 0
let g:tagbar_singleclick = 0
let g:tagbar_foldlevel = 99
let g:tagbar_iconchars = ['▶', '▼']
let g:tagbar_scopestrs = {}
let g:tagbar_autoshowtag = 0
let g:tagbar_previewwin_pos = "topleft"
let g:tagbar_autopreview = 0
let g:tagbar_systemenc = 'encoding'
function! TagbarStatusFunc(current, sort, fname, flags, ...) abort
let colour = a:current ? '%#StatusLine#' : '%#StatusLineNC#'
let flagstr = join(a:flags, '')
if flagstr != ''
let flagstr = '[' . flagstr . '] '
endif
return colour . '[' . a:sort . '] ' . flagstr . a:fname
endfunction
let g:tagbar_status_func = 'TagbarStatusFunc'
" let g:no_status_line 
let g:tagbar_silent = 0
let g:tagbar_use_cache = 1
let g:tagbar_file_size_limit = 0
let g:tagbar_wrap = 0
let g:tagbar_no_autocmds = 0
let g:tagbar_scrolloff = 0
let g:tagbar_jump_offset = 0
let g:tagbar_jump_lazy_scroll = 0
let g:tagbar_highlight_follow_insert = 0
let g:tagbar_highlight_method = 'nearest-stl'
let g:tagbar_ignore_anonymous = 0
