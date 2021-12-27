require("buftabline").setup { 
    tab_format = " #{n}: #{b}#{f} #{i} ╱",
    buffer_id_index = false,
    icon_colors = true,
    start_hidden = false,
    auto_hide = false,
    disable_commands = false,
    go_to_maps = true,
    flags = {
	modified = " [+]",
	not_modifiable = " [-]",
	readonly = " [RO]",
	},
    hlgroups = {
	current = "TabLineSel",
	normal = "TabLine",
	active = nil,
	spacing = nil,
	modified_current = nil,
	modified_normal = nil,
	modified_active = nil,
	tabpage_current = nil,
	tabpage_normal = nil,
	},
    show_tabpages = false,
    tabpage_format = " #{n} ",
    tabpage_position = "right",
}

 require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 -- override = {
 --  zsh = {
 --    icon = "",
 --    color = "#428850",
 --    cterm_color = "65",
 --    name = "Zsh"
 --  }
 -- };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
