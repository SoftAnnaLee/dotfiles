Plug 'vimwiki/vimwiki'
Plug 'michal-h21/vimwiki-sync'

let g:vimwiki_list = [{'path': '~/vimwiki',
                     \ 'path_html': '~/vimwiki/html',
                     \ 'index': 'main_index',
                     \ 'ext': '.md',
                     \ 'syntax': 'markdown',
                     \ 'nested_syntaxes': {'rust': 'rust', 'javascript': 'javascript'},
                     \ 'auto_diary_index': 0,
                     \ 'auto_toc': 0,
                     \ 'auto_generate_tags': 0,
                     \ 'auto_tags': 0}]

let g:vimwiki_fold_blank_lines = 1  " set to 1 to fold blank lines
let g:vimwiki_header_type = '#'     " set to '=' for wiki syntax
let g:vimwiki_folding = ""
let g:vimwiki_auto_header = 0
let g:vimwiki_autowriteall = 0
let g:vimwiki_global_ext = 0        " Don't make temp wiki and override file settings


autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
