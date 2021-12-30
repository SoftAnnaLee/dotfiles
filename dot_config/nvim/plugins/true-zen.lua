local true_zen = require("true-zen")

true_zen.setup({
    ui = {
        bottom = {
            laststatus = 0,
            ruler = false,
            showmode = false,
            showcmd = false,
            cmdheight = 1,
        },
        top = {
            showtabline = 0,
        }, left = {
            number = false,
            relativenumber = false,
            signcolumn = "no",
        },
    },
    modes = {
        ataraxis = {
            left_padding = 32,
            right_padding = 32,
            top_padding = 1,
            bottom_padding = 1,
            ideal_writing_area_width = { 83 },
            auto_padding = true,
            keep_default_fold_fillchars = true,
            custom_bg = {"none", ""},
            bg_configuration = true,
            quit = "untoggle",
            ignore_floating_windows = true,
            affected_higroups = {
                NonText = true,
                FoldColumn = true,
                ColorColumn = true,
                VertSplit = true,
                StatusLine = true,
                StatusLineNC = true,
                SignColumn = true,
            },
        },
        focus = {
            margin_of_error = 5,
            focus_method = "experimental"
        },
    },
    integrations = {
        vim_gitgutter = false,
        galaxyline = false,
        tmux = false,
        gitsigns = false,
        nvim_bufferline = false,
        limelight = false,
        twilight = true,
        vim_airline = false,
        vim_powerline = false,
        vim_signify = false,
        express_line = false,
        lualine = true,
        lightline = false,
        feline = false
    },
    misc = {
        on_off_commands = false,
        ui_elements_commands = false,
        cursor_by_mode = true,
    }
})

-- changes the kitty font size
-- it's a bit glitchy, but it works
local function kitty(enabled)
  if not vim.fn.executable("kitty") then
    return
  end
  local cmd = "kitty @ --to %s set-font-size %s"
  local socket = vim.fn.expand("$KITTY_LISTEN_ON")
  if enabled then
    vim.fn.system(cmd:format(socket, "+4"))
  else
    vim.fn.system(cmd:format(socket, "0"))
  end
  vim.cmd([[redraw]])
end

true_zen.before_mode_atraxis_on = function ()
    -- vim.api.nvim_command('NumbersDisable')
    kitty('true')
end
true_zen.after_mode_ataraxis_on = function ()
    vim.api.nvim_command('set nocursorline')
    vim.api.nvim_command('WP')
end
true_zen.before_mode_atraxis_off = function ()
    vim.api.nvim_command('NWP')
    vim.api.nvim_command('set cursorline')
end
true_zen.after_mode_atraxis_off = function ()
    -- vim.api.nvim_command('NumbersEnable')
    kitty('false')
end

true_zen.before_mode_minimalist_on = function ()
    vim.api.nvim_command('NumbersDisable')
end
true_zen.after_mode_minimalist_off = function ()
    vim.api.nvim_command('NumbersEnable')
end

require("twilight").setup {
-- your configuration comes here
-- or leave it empty to use the default settings
-- refer to the configuration section below
  dimming = {
    alpha = 0.25, -- amount of dimming
    -- we try to get the foreground from the highlight groups or fallback color
    -- color = { "Normal", "#ffffff" },
    inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
  },
  context = 0, -- amount of lines we will try to show around the current line
  treesitter = true, -- use treesitter when available for the filetype
  -- treesitter is used to automatically expand the visible text,
  -- but you can further control the types of nodes that should always be fully expanded
  expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
    "function",
    "method",
    "table",
    "if_statement",
  },
  exclude = {}, -- exclude these filetypes
}
