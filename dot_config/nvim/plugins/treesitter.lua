require'nvim-treesitter.configs'.setup {
  ensure_installed = "rust", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- disable = { "c", "rust" },  -- list of language that will be disabled
  },
  indent = {
      enable = true
  },
  context_commentstring = {
    enable = true,
    -- config = {
      -- css = '// %s'
      -- javascript = {
      --   __default = '// %s',
      --   jsx_element = '{/* %s */}',
      --   jsx_fragment = '{/* %s */}',
      --   jsx_attribute = '// %s',
      --   comment = '// %s'
      -- }
    -- }
  },
  rainbow = {
    enable = false,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
