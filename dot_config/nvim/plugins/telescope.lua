local ctags_ft_opt = {
    aspvbs= "--asp-kinds=f",
    awk= "--awk-kinds=f",
    c= "--c-kinds=fp",
    cpp= "--c++-kinds=fp --language-force=C++",
    cs= "--c#-kinds=m",
    erlang= "--erlang-kinds=f",
    fortran= "--fortran-kinds=f",
    java= "--java-kinds=m",
    javascript= "--javascript-kinds=f",
    lisp= "--lisp-kinds=f",
    lua= "--lua-kinds=f",
    matla= "--matlab-kinds=f",
    pascal= "--pascal-kinds=f",
    php= "--php-kinds=f",
    python= "--python-kinds=fm --language-force=Python",
    ruby= "--ruby-kinds=fF",
    scheme= "--scheme-kinds=f",
    sh= "--sh-kinds=f",
    sql= "--sql-kinds=f",
    tcl= "--tcl-kinds=m",
    verilog= "--verilog-kinds=f",
    vim= "--vim-kinds=f",
    go= "--go-kinds=f",
    rust= "--rust-kinds=fPM",
    ocaml= "--ocaml-kinds=mf",
}

require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_position = "top",
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_defaults = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    width = 0.75,
    preview_cutoff = 120,
    results_height = 1,
    results_width = 0.8,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  },
  pickers = {
      file_browser = {
          hidden = true
      }
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
    ctags_outline = {
        --ctags option
        ctags = {'ctags'},
        --ctags filetype option
        set_ft_opt = function(ctags_ft_opt)
            ctags_ft_opt.vim = '--vim-kinds=fk'
            ctags_ft_opt.lua = '--lua-kinds=fk'
            ctags_ft_opt.rust = "--rust-kinds=fPM"
        end
    },
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
      }
    }
  }
}
--
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
require('telescope').load_extension('ctags_outline')
require('telescope').load_extension('projects')
require("telescope").load_extension("ui-select")


local Path = require('plenary.path')
require('session_manager').setup({
  -- The directory where the session files will be saved.
  sessions_dir = Path:new(vim.fn.stdpath('data'), 'sessions'),
  -- The character to which the path separator will be replaced for session files.
  path_replacer = '__',
  -- The character to which the colon symbol will be replaced for session files.
  colon_replacer = '++',
  -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
  autoload_mode = require('session_manager.config').AutoloadMode.Disabled,
  -- Automatically save last session on exit.
  autosave_last_session = true,
  -- Plugin will not save a session when no writable and listed buffers are opened.
  autosave_ignore_not_normal = true,
  -- Always autosaves session. If true, only autosaves after a session is active.
  autosave_only_in_session = false,
})
