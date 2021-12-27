local nvim_lsp = require'lspconfig'

local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
            show_parameter_hints = true,
            parameter_hints_prefix = "<- ",
            other_hints_prefix = "=> ",
        },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        -- on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy"
                },
            }
        }
    },
}

require('rust-tools').setup(opts)

local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)

-- -- Setting up nvim-dap
-- local dap = require('dap')
-- dap.configurations.cpp = {
--   {
--     name = "Launch",
--     type = "lldb",
--     request = "launch",
--     program = function()
--       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--     end,
--     cwd = '${workspaceFolder}',
--     stopOnEntry = false,
--     args = {},
--
--     -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
--     --
--     --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
--     --
--     -- Otherwise you might get the following error:
--     --
--     --    Error on launch: Failed to attach to the target process
--     --
--     -- But you should be aware of the implications:
--     -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
--     runInTerminal = false,
--   },
-- }
--
-- dap.configurations.rust = dap.configurations.cpp
--
-- local dap = require('dap')
-- dap.adapters.lldb = {
--   type = 'executable',
--   command = '/usr/bin/lldb-vscode', -- adjust as needed
--   name = "lldb"
-- }
--
-- require("dapui").setup({
--   icons = { expanded = "▾", collapsed = "▸" },
--   mappings = {
--     -- Use a table to apply multiple mappings
--     expand = { "<CR>", "<2-LeftMouse>" },
--     open = "o",
--     remove = "d",
--     edit = "e",
--     repl = "r",
--   },
--   sidebar = {
--     -- You can change the order of elements in the sidebar
--     elements = {
--       -- Provide as ID strings or tables with "id" and "size" keys
--       {
--         id = "scopes",
--         size = 0.25, -- Can be float or integer > 1
--       },
--       { id = "breakpoints", size = 0.25 },
--       { id = "stacks", size = 0.25 },
--       { id = "watches", size = 00.25 },
--     },
--     size = 40,
--     position = "left", -- Can be "left", "right", "top", "bottom"
--   },
--   tray = {
--     elements = { "repl" },
--     size = 10,
--     position = "bottom", -- Can be "left", "right", "top", "bottom"
--   },
--   floating = {
--     max_height = nil, -- These can be integers or a float between 0 and 1.
--     max_width = nil, -- Floats will be treated as percentage of your screen.
--     border = "single", -- Border style. Can be "single", "double" or "rounded"
--     mappings = {
--       close = { "q", "<Esc>" },
--     },
--   },
--   windows = { indent = 1 },
-- })
