"                     ▄▆▄▝
"                    ▐███▋ ▄▆▄▝
"                     ▀█▀ ▐███▋
"                ▁▂▄▅▅▅▄▄▂ ▀█▀▄▆▄▝
"               ▟██████████▄ ▐███▋
"              ▐████████████▙ ▀▄▆▄▝
"               ▝▀▜██████████ ▐███▋
"        _         ▐████████▛  ▀█▀        ____                      68b
"       dM.         ▜██████▛              `MM'                      Y89
"      ,MMb          ▔▀▀▀▀▔                MM                        9
"      d'YM.   ___  __  ___  __      ___    MM        ____     ____  /   ____
"     ,P `Mb   `MM 6MMb `MM 6MMb   6MMMMb   MM       6MMMMb   6MMMMb    6MMMMb\
"     d'  YM.   MMM9 `Mb MMM9 `Mb 8M'  `Mb  MM      6M'  `Mb 6M'  `Mb  MM'    `
"    ,P   `Mb   MM'   MM MM'   MM     ,oMM  MM      MM    MM MM    MM  YM.
"    d'    YM.  MM    MM MM    MM ,6MM9'MM  MM      MMMMMMMM MMMMMMMM   YMMMMb
"   ,MMMMMMMMb  MM    MM MM    MM MM'   MM  MM      MM       MM             `Mb
"   d'      YM. MM    MM MM    MM MM.  ,MM  MM    / YM    d9 YM    d9  L    ,MM
" _dM_     _dMM_MM_  _MM_MM_  _MM_`YMMM9'Yb_MMMMMMM  YMMMM9   YMMMM9   MYMMMM9
" ▗▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▖
" ▐▌▗▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▖▐▌
" ▐▌▐███████████████████    █████████████████████████████████████████████████▌▐▌
" ▐▌▐████████████████████▄▄██████████████████████████████████████████████████▌▐▌
" ▐▌▐█▙    ▜██████▛    ▟    █   ▘    ▝▜▛      ▝▜██   ▝     ▝▜████▀▀▘    ▝▀▜██▌▐▌
" ▐▌▐██▙    ▜████▛    ▟█    █                   ▜█     ▄▄▄   ▜█▛    ▄▄▄▖   ▜█▌▐▌
" ▐▌▐███▙    ▜██▛    ▟██    █    ▟██▄    ▟██▄    █    ▟███▙   ▛   ▗▟████▙   █▌▐▌
" ▐▌▐████▙    ▜▛    ▟███    █    ████    ████    █    ████████▌   ███████████▌▐▌
" ▐▌▐█████▙        ▟████    █    ████    ████    █    ████████▙   ▝█████▛   █▌▐▌
" ▐▌▐▀  ▀██▙      ▟█████    █    ████    ████    █    █████████▙    ▀▀▀▘   ▟█▌▐▌
" ▐▌▐▄  ▄███▙    ▟██████    █    ████    ████    █    ██████████▙▖       ▄███▌▐▌
" ▐▙▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▟▌
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                      IMPORTANT VARIABLES AND SETTINGS                     ║
    "Settings and variables that need to be set before anything else
    " Set <leader> to <,>
    let mapleader=","
    let maplocalleader=","

    if has('nvim')
        let $VIMDIR=$HOME."/.config/nvim"
        let $VIMCONFIG=$VIMDIR."/init.vim"
    else
        let $VIMDIR=$HOME."/.vim"
        let $VIMCONFIG=$VIMDIR."/vimrc"
    endif
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                                  PLUG.VIM                                 ║
    " Install vim-plug if not found
    let data_dir = has('nvim') ? stdpath('data') . '/site' : '~.vim'
    if empty(glob(data_dir . '/autoload/plug.vim'))
        silent execute 'curl -fLo'.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        autocmd VimEnter * PlugInstall --sync | source $VIMCONFIG
    endif

    " Run PlugInstall if there are missing plugins
    autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \| PlugInstall --sync | source ~/.config/nvim/init.vim
    \| endif

call plug#begin()
 """ UI IMPROVEMENTS
    source ~/.config/nvim/plugins/alpha.vim          "Fancy start screen
    source ~/.config/nvim/plugins/buftabline.vim     "Shows open buffers in a tabline
                                                     "Also includes nvim-web-devicons
    source ~/.config/nvim/plugins/lualine.vim        "Lightweight statusbar
    source ~/.config/nvim/plugins/nord.vim           "Nord theme for vim
 """ COMMANDS
    source ~/.config/nvim/plugins/commentary.vim     "Language agnostic commenting
    source ~/.config/nvim/plugins/fugitive.vim       "Git Wrapper
    source ~/.config/nvim/plugins/lion.vim           "Plugin to align text
    source ~/.config/nvim/plugins/lightspeed.vim     "motion plugin
    source ~/.config/nvim/plugins/surround.vim       "Surround text objects with chars
 """ COMPLETION AND SNIPPETS
    source ~/.config/nvim/plugins/vimspector.vim     "Debugging plugin
    source ~/.config/nvim/plugins/nvim-cmp.vim       "Completion framework
    source ~/.config/nvim/plugins/vsnip.vim          "Snippet engine
 """ SYNTAX AND LSP
    source ~/.config/nvim/plugins/lspsaga.vim        "LSP UI
    source ~/.config/nvim/plugins/nvim-lsp.vim       "Collection of common LSP client config
    source ~/.config/nvim/plugins/rust.vim           "Rust integration and commands
    source ~/.config/nvim/plugins/treesitter.vim     "Syntax tree highlighting
    source ~/.config/nvim/plugins/typescript.vim     "Syntax and plugins for typescript
    source ~/.config/nvim/plugins/grammarous.vim     "Grammar checker using LanguageTool
    source ~/.config/nvim/plugins/copilot.vim        "Github copilot
 """ TELESCOPE
    source ~/.config/nvim/plugins/telescope.vim      "Extendable fuzzy finder
 """ MISC.
    source ~/.config/nvim/plugins/auto-pairs.vim     "Auto type matching pairs (e.g. '[')
    source ~/.config/nvim/plugins/colorizer.vim      "Highlight colours as used in code
    source ~/.config/nvim/plugins/editorconfig.vim   "Reads and applies .editorconfig files
    source ~/.config/nvim/plugins/eunuch.vim         "Syntax sugar for unix commands
    source ~/.config/nvim/plugins/heritage.vim       "Creates missing parent directories
    source ~/.config/nvim/plugins/indent-blank.vim   "Shows indentation lines
    source ~/.config/nvim/plugins/lastplace.vim      "Intelligently reopen at last position
    source ~/.config/nvim/plugins/numbers.vim        "Auto swap in & out of relativenumber
    source ~/.config/nvim/plugins/peekaboo.vim       "Shows contents of registers
    source ~/.config/nvim/plugins/pomodoro.vim       "Pomodoro timer within vim
    source ~/.config/nvim/plugins/project.vim        "Automatically switch to project root
                                                     "+ telescope integration
    source ~/.config/nvim/plugins/sayonara.vim       "Deletes and closes buffer smartly
    source ~/.config/nvim/plugins/table-mode.vim     "Easy creation of text-based tables
    source ~/.config/nvim/plugins/symbol-outline.vim "Bar of tags on right side of window
    " source ~/.config/nvim/plugins/tagbar.vim         "Bar of tags on right side of window
    source ~/.config/nvim/plugins/true-zen.vim       "Distraction-free writing
    source ~/.config/nvim/plugins/vimwiki.vim        "Personal wiki in vim ,w
    source ~/.config/nvim/plugins/yankstack.vim      "Cycle through old yanks
    call plug#end()
doautocmd User PlugLoaded
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                                  SETTINGS                                 ║
    set expandtab              "Insert spaces instead of tabs
    set shiftwidth=4           "How many spaces Vim uses when autoindenting
    set softtabstop=4          "How many spaces Vim treats like a tab
    set tabstop=4              "Visual width of a tab (doesn't insert spaces!)

    set backup                 "Save a backup file"
    exec "set backupdir=".$VIMDIR."/backup//"
    "set colorcolumn=81        "Create a colored line at the 81st column
    set confirm                "Save prompt instead of error for unwritten files
    set cursorline             "Highlight current line's background
    set exrc                   "Searches current directory for config '.nvimrc'
    set formatoptions=c        "Auto insert+wrap comments based on context
    set formatoptions+=j       "Remove comments when joining with <J>
    set formatoptions+=n       "Automatically format numbered lists
    set formatoptions+=q       "Allow <gq>
    set formatoptions-=o       "Do not insert comment leader after hitting <O>
    set ignorecase             "Ignores case when searching
    set lazyredraw             "Don't redraw screen during macros
    set list                   "show tabs, trailing spaces, non-breakable spaces
    set listchars=tab:⇥\ ,trail:.,nbsp:+ " Chars for list
    set modelineexpr           "Allow end-of-file settings
    set nowrap
    set noruler
    set scrolloff=8            "How many lines between cursor and screen edge
    set showmatch              "highlight matching bracket while hovering
    set sidescrolloff=8        "How many columns between cursor and screen edge
    set smartcase              "Ignores case when searching, unless using an uppercase
    set smartindent            "Automatically indents, when contextually appropriate
    set splitbelow             "Place split below the current window
    set splitright             "Place split right of the current window
    set updatetime=300         "Milliseconds of idling before swap is written
    set virtualedit=block      "Allow v-block to select outside text constraints
    set wildmode=longest:full,full
    "When hitting <tab> will try to complete longest word common among
    "matches, then will enter the menu and do completion for further hits of
    "<tab>

    "Set the undodir for writing undo file
    exec "set undodir=".$VIMDIR."/undodir"
    set undofile               "Create a file with a history of undos
    set nobackup               "Don't save a backup file
    set writebackup            "Only creates backup for file when writing, deletes after write

    "Use system clipboard if possible; if not use '*' register
    if has('unnamedplus')
        set clipboard=unnamedplus
    else
        set clipboard=unnamed
    endif

"" ╙───────────────────────────────────────────────────────────────────────────╜
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                                  KEYBINDS                                 ║
    "Custom commands and keybindings                                    #COMMANDS

    " Use ,<space> to remove search highlighting and text in command bar
    nnoremap <silent><leader><space> :nohlsearch <bar> echon ''<CR>
    " Use ,c to show a colored line on the 80th column
    nnoremap <leader>cc :<C-U>execute "set colorcolumn=".(&colorcolumn == "" ? "80" : "")."<bar>hi Colorcolumn ctermbg=darkgrey"<CR>
    " Use <space> to fold and unfold text
    nnoremap <space> za
    " Source Vim configuration file and install plugins
    nnoremap <silent><leader>so :w \| :source ~/.config/nvim/init.vim \| :PlugInstall<CR>

    " Allow gf to open non-existent files
    nnoremap gf :edit <cfile><cr>

    "Use <C-H/J/K/L> to move to associated split in normal mode
    nnoremap <C-H> <C-W><C-H>
    inoremap <C-h> <C-\><C-N><C-w>h
    nnoremap <C-J> <C-W><C-J>
    inoremap <C-j> <C-\><C-N><C-w>j
    nnoremap <C-K> <C-W><C-K>
    inoremap <C-k> <C-\><C-N><C-w>k
    nnoremap <C-L> <C-W><C-L>
    inoremap <C-l> <C-\><C-N><C-w>l
    " Terminal mode
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-h> <C-\><C-N><C-w>h
    tnoremap <C-j> <C-\><C-N><C-w>j
    tnoremap <C-k> <C-\><C-N><C-w>k
    tnoremap <C-l> <C-\><C-N><C-w>l

    " reselect selection when indenting/deindenting
    vnoremap < <gv
    vnoremap > >gv

    " maintain cursor position when yanking a visual selection
    vnoremap y myy`y
    vnoremap Y myY`y

    " Paste replace visual selection without copying it
    vnoremap <leader>p "_dP

    " Make Y act like other capitals
    nnoremap Y y$

    " Quickly exit to normal mode
    imap jj <esc>

    "Command to edit init.vim
    command! Config edit $VIMCONFIG
    "Command to reload init.vim
    command! Source w <bar> source $VIMCONFIG
    "Open a file with user's preferred program
    command! Open !xdg-open %
"""" BUFFER COMMANDS
    " Close the current buffer
    map <leader>bd :Bclose<cr>:tabclose<cr>gT
    " Close all other buffers
    map <leader>bo :<C-U>wa<bar>%bd<bar>e#<cr><cr>

    map <leader>l :bnext<cr>
    map <leader>h :bprevious<cr>
    " Use ,, to swap between buffers
    nnoremap <leader><leader> :<C-U>execute "b" . (v:count == 0 ? "#" : "v:count")<CR>
"""" WORD PROCESSOR MODE
    " Command to let vim act more like a wordprocessor
    func! WordProcessor()
        "" COMMANDS
        "Move by visual lines not by literal line
        map j gj
        map k gk
        "" FORMATING
        setlocal formatoptions=1  "Break line before 1 char words
        setlocal formatoptions+=2 "Use second line of paragraphs for autoindent
        setlocal noexpandtab "Use tabs instead of spaces
        setlocal wrap "Wrap lines that go past the screen edge
        setlocal linebreak "Lines will only break at certain characters
        "" DICTIONARY
        setlocal spell "Do spell checking and in english
        setlocal spelllang=en_ca,en_us "Set dictionary to Canadian & US English
        setlocal thesaurus+=/home/test/.vim/thesaurus/mthesaur.txt
        setlocal complete+=s "Makes autocomplete search the thesaurus
    endfu

    com! WP call WordProcessor()

    " Command to undo WP
    func! NoWordProcessor()
        " Undo all of the WP settings
        unmap j
        unmap k

        set complete<
        set expandtab<
        set formatoptions<
        set linebreak<
        set spell<
        set thesaurus<
        set wrap<
    endfu
    com! NWP call NoWordProcessor()

"""" HEMINGWAY MODE
    func HemingwayMode()
        let evil_keys = ['<BS>', '<Del>', '<C-W>', '<C-U>', '<C-C>', '<C-O>', '<Up>', '<Down>', '<Left>', '<Right>']
        :lua vim.api.nvim_buf_set_keymap(0, 'i', '<BS>', '', { noremap = false, silent = true })
        for key in evil_keys
            " Disable evil keys in insert-mode
            exe 'inoremap ' . key . ' <nop>'
        endfor
    endfu
    com! HM call HemingwayMode()
    func HemingwayExit()
        let evil_keys = ['<Del>',
                        \'<C-W>',
                        \'<C-U>',
                        \'<C-C>',
                        \'<C-O>',
                        \'<Up>',
                        \'<Down>',
                        \'<Left>',
                        \'<Right>']
        :lua vim.api.nvim_buf_set_keymap(0, 'i', '<BS>', '<BS>', { noremap = false, silent = true })
        for key in evil_keys
            " Disable evil keys in insert-mode
            silent! exe "iunmap " . key
        endfor
    endfu
    com! HE call HemingwayExit()
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                             FILETYPE SETTINGS                             ║
   "Settings for specific filetypes                                    #FILETYPES
    " Read and write rust tags
    autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
    autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                           LOCAL VIMRC SETTTINGS                           ║
    " These lines set local settings for this file when read.
"""" Defines how folds are handled
    function! VimFoldText()
        let s:info = '('.string(v:foldend-v:foldstart).')'
        if v:foldlevel == 1
            let s:line = '   '.getline(v:foldstart)[3:]
        else
            let s:line = '   ║ '.getline(v:foldstart)[5:].repeat(' ', (79 - strwidth(getline(v:foldstart))) ).'║'
        endif

        return s:line[:strwidth(s:line)-len(s:info)].s:info.'║'
    endfunction
"""" Fold Expression explanation
    " Basically uses an expression to determine the fold level of a line. A
    " pseudocode expression might be;
    " │ for (i; lines(vimrc); i++) {
    " │     line = vimrc[i]
    " │     if line.regex(^"") {
    " │         return ( index(line.regex(""*)) - 2 )
    " │     }
    " │     else {
    " │         return vimrc[i-1].foldlevel()
    " │     }
    " │ }
    " Or to put it in other words; it will make determine the fold level by the
    " number of '"'s at the start of a line (with ""=0 and """=1 and so on).
    " If there are no "s then the line takes the foldlevel of the previous line
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" vim:foldmethod=expr
"" vim:foldlevel=0
"" vim:foldexpr=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='
"" vim:foldtext=VimFoldText()
