Plug 'vimwiki/vimwiki'
Plug 'michal-h21/vimwiki-sync'

let g:vimwiki_list = [{'path': '~/vimwiki',
                     \ 'path_html': '~/vimwiki/html',
                     \ 'nested_syntaxes': {'rust': 'rust', 'javascript': 'javascript'},
                     \ 'ext': '.wiki',
                     \ 'auto_diary_index': 1,
                     \ 'auto_toc': 1,
                     \ 'auto_generate_tags': 1,
                     \ 'auto_tags': 1}]

let g:vimwiki_fold_blank_lines = 1  " set to 1 to fold blank lines
let g:vimwiki_header_type = '='     " set to '=' for wiki syntax
let g:vimwiki_folding = ""
let g:vimwiki_auto_header = 1
let g:vimwiki_autowriteall = 1
let g:vimwiki_global_ext = 0


autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
