Plug 'vimwiki/vimwiki'
Plug 'michal-h21/vimwiki-sync'

let g:vimwiki_list = [{'path': '~/vimwiki',
                     \ 'path_html': '~/vimwiki/html',
                     \ 'ext': '.md'}]
"Custom linkhandler
function! VimwikiLinkHandler(link)
    let link = a:link
    if link =~# '^vim:'
        let link = link[4:]
        execute link
        return 1
    elseif link=~# '^vfile:'
        let link = link[1:]
        let link_infos = vimwiki#base#resolve_link(link)
        execute 'edit '.fnameescape(link_infos.filename)
        return 1
    else
        return 0
    endif
endfunction

let g:vimwiki_conceallevel=0
autocmd FileType vimwiki normal zR
