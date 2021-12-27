Plug 'airblade/vim-rooter'

let g:rooter_targets = '/,*'
let g:rooter_patterns = ['.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json']
let g:rooter_change_directory_for_non_project_files = ''
let g:rooter_manual_only = 0
let g:rooter_cd_cmd = 'cd'
let g:rooter_silent_chdir = 0
let g:rooter_resolve_links = 0
