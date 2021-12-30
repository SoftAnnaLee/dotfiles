local dashboard = require"alpha.themes.dashboard"
local if_nil = vim.F.if_nil

local function dash_button(sc, txt, keybind, keybind_opts)
    local b = dashboard.button(sc, txt, keybind, keybind_opts)
    b.opts.hl = {{"StatusLineNC", 0, 99}}
    b.opts.hl_shortcut = {{ "StatusLine", 0, 99}}
    return b
end

local function file_to_strings(file_path)
    local file = assert(io.open(file_path, "r"))
    local text = file:read("*all")
    file:close()
    local logo = {""}
    table.insert(logo, "")
    for s in text:gmatch("[^\n]+") do
        table.insert(logo, s)
    end
    table.insert(logo, "")
    table.insert(logo, "")
    return logo
end

local function header()
    local logo = file_to_strings(os.getenv("HOME").."/logo_new.txt")
    return logo
end

local function footer()
    -- local total_plugins = #vim.tbl_keys(packer_plugins)
    local datetime = os.date("%A %B %d   %H:%M %p")
    return datetime
end

dashboard.section.header.val = header()
dashboard.section.header.opts.hl = "Boolean"

dashboard.section.buttons.val = {
    dash_button("SPC f n", "  New file", ":ene <BAR> startinsert <CR>"),
    dash_button("SPC f o", "  Recently opened files", ":Telescope oldfiles<CR>"),
    dash_button("SPC f f", "  Find file", ":Telescope find_files<CR>"),
    dash_button("SPC f g", "  Find word", ":Telescope live_grep<CR>"),
    dash_button("SPC f s", "  Open session", ":Telescope sessions<CR>"),
    dash_button("SPC u d", "  Update plugins", ":PlugInstall<CR>"),
    dash_button("SPC q  ", "  Quit", "<Cmd>qa<CR>")
}

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "LineNr"

require"alpha".setup(dashboard.opts)
